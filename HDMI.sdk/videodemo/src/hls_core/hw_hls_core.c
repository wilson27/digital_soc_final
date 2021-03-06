#include "hw_hls_core.h"
#include <stdint.h>
#include <assert.h>
#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
//#include <byteswap.h>
#include <string.h>
#include <errno.h>
#include <signal.h>
#include <fcntl.h>
#include <ctype.h>
//#include <termios.h>
#include <stdbool.h>
#include <sys/types.h>
//#include <sys/mman.h>
#include <sys/unistd.h>


void write_int(volatile void* map_base, int offset, int value)
{
  volatile void* virt_addr = (volatile void*)((char*)map_base + offset);
  *((uint32_t *) virt_addr) = value;
}

int read_int(volatile void* map_base, int offset)
{
  volatile void* virt_addr = (volatile void*)((char*)map_base + offset); 
  return *((uint32_t *) virt_addr);
}

void write_data(volatile void* map_base, int offset, float value)
{
  volatile void* virt_addr = (volatile void*)((char*)map_base + offset);
  *((float *) virt_addr) = value;
}

float read_data(volatile void* map_base, int offset)
{
  volatile void* virt_addr = (volatile void*)((char*)map_base + offset);
  return *((float *) virt_addr);
}

void setup_fc_layer( volatile void* map_base, int target, int input_offset, int output_offset, int num_inputs, int num_outputs, int enable_relu )
{
	  write_int(map_base, target + FC_CTRL_BUS_ADDR_INPUT_OFFSET_DATA, input_offset);
	  write_int(map_base, target + FC_CTRL_BUS_ADDR_OUTPUT_OFFSET_DATA, output_offset);
	  write_int(map_base, target + FC_CTRL_BUS_ADDR_BATCH_SIZE_DATA, 1);
	  write_int(map_base, target + FC_CTRL_BUS_ADDR_NUM_INPUTS_DATA, num_inputs);
	  write_int(map_base, target + FC_CTRL_BUS_ADDR_NUM_OUTPUTS_DATA, num_outputs);
	  write_int(map_base, target + FC_CTRL_BUS_ADDR_ENABLE_RELU_DATA, enable_relu);
}

void setup_conv_layer( volatile void* map_base, int target, int input_offset, int output_offset, int id, int ix, int iy, int od, int ox, int oy, int s, int k )
{
	  write_int(map_base, target + CONV_LAYER_CTRL_BUS_ADDR_INPUT_OFFSET_DATA, input_offset);
	  write_int(map_base, target + CONV_LAYER_CTRL_BUS_ADDR_OUTPUT_OFFSET_DATA, output_offset);
	  write_int(map_base, target + CONV_LAYER_CTRL_BUS_ADDR_B_DATA, 1);
	  write_int(map_base, target + CONV_LAYER_CTRL_BUS_ADDR_OD_DATA, od);
	  write_int(map_base, target + CONV_LAYER_CTRL_BUS_ADDR_OX_DATA, ox);
	  write_int(map_base, target + CONV_LAYER_CTRL_BUS_ADDR_OY_DATA, oy);
	  write_int(map_base, target + CONV_LAYER_CTRL_BUS_ADDR_ID_DATA, id);
	  write_int(map_base, target + CONV_LAYER_CTRL_BUS_ADDR_IX_DATA, ix);
	  write_int(map_base, target + CONV_LAYER_CTRL_BUS_ADDR_IY_DATA, iy);
	  write_int(map_base, target + CONV_LAYER_CTRL_BUS_ADDR_S_DATA, s);
	  write_int(map_base, target + CONV_LAYER_CTRL_BUS_ADDR_K_DATA, k);
}

void setup_maxpool_layer( volatile void* map_base, int target, int input_offset, int output_offset, int id, int ix, int iy, int od, int ox, int oy, int s, int k  )
{
	  write_int(map_base, target + MAXPOOL_LAYER_CTRL_BUS_ADDR_INPUT_OFFSET_DATA, input_offset);
	  write_int(map_base, target + MAXPOOL_LAYER_CTRL_BUS_ADDR_OUTPUT_OFFSET_DATA, output_offset);
	  write_int(map_base, target + MAXPOOL_LAYER_CTRL_BUS_ADDR_B_DATA, 1);
	  write_int(map_base, target + MAXPOOL_LAYER_CTRL_BUS_ADDR_OD_DATA, od);
	  write_int(map_base, target + MAXPOOL_LAYER_CTRL_BUS_ADDR_OX_DATA, ox);
	  write_int(map_base, target + MAXPOOL_LAYER_CTRL_BUS_ADDR_OY_DATA, oy);
	  write_int(map_base, target + MAXPOOL_LAYER_CTRL_BUS_ADDR_ID_DATA, id);
	  write_int(map_base, target + MAXPOOL_LAYER_CTRL_BUS_ADDR_IX_DATA, ix);
	  write_int(map_base, target + MAXPOOL_LAYER_CTRL_BUS_ADDR_IY_DATA, iy);
	  write_int(map_base, target + MAXPOOL_LAYER_CTRL_BUS_ADDR_S_DATA, s);
	  write_int(map_base, target + MAXPOOL_LAYER_CTRL_BUS_ADDR_K_DATA, k);
}

void start_layer(volatile void* map_base, int target, int ap_start_addr){
	write_int(map_base, target + ap_start_addr, 0x1);
}

int poll_layer(volatile void* map_base, int target, int ap_status_addr) {
	int status = (read_int(map_base, target+ ap_status_addr) & 0xe);
	return status;
}

void hw_fc_layer(int target,              // control offset
				//float * mem,              // global memory pointer
				int input_offset,         // offset of inputs
				int output_offset,        // offset of outputs
				const int batch_size,     // batch size
				const int num_inputs,     // number of input (dimensions)
				const int num_outputs,    // number of output (dimensions)
				const int enable_relu)    // flag to enable/disable ReLU
{
	
  //Step 1:  Setup control registers  write the value into control bus ( what is map_base address? )
	setup_fc_layer( 0x0, target, input_offset,  output_offset, num_inputs, num_outputs, enable_relu );

  // Step 2: read data from external DDR , in this case, through microprocessor NOT DMA. 
  // in lab2. mem is a C array that created to pass in data, we need to copy data from C array to in_buffer, and 
  // pass the data to dma and write into External memory
  // in final project, writing data to DDR will be done by microblaze, layer can access using the given pointer to external memory location
	start_layer(0x0,HW_FC_CTRL_ADDR, FC_CTRL_BUS_ADDR_AP_CTRL);

  //step 3: poll status and wait for processing to finish
    while (poll_layer(0x0, HW_FC_CTRL_ADDR, FC_CTRL_BUS_ADDR_AP_CTRL) ==0){
    	printf("fc processing \n");
    }
    printf("done fc processing \n");
}


