/*
 * Politecnico di Milano
 * Code created using PandA - Version: PandA 0.9.6 - Revision 5e5e306b86383a7d85274d64977a3d71fdcff4fe - Date 2020-05-03T19:45:02
 * /opt/panda/bin/bambu executed with: /opt/panda/bin/bambu --compiler=I386_CLANG6 --simulate ../tmp/example_multiple_forLoop_multiple_named.ll 
 */
#define _FILE_OFFSET_BITS 64

#define __Inf (1.0/0.0)
#define __Nan (0.0/0.0)

#ifdef __cplusplus
#include <cstdio>

#include <cstdlib>

typedef bool _Bool;

#else
#include <stdio.h>

#include <stdlib.h>

extern void exit(int status);
#endif

//global variable used to store the output file
FILE * __bambu_testbench_fp;

//variable used to detect a standard end of the main (exit has not been called)
unsigned int __standard_exit;
//definition of __bambu_testbench_exit function
void __bambu_testbench_exit(void) __attribute__ ((destructor));
void __bambu_testbench_exit(void)
{
   if (!__standard_exit)
   {
      fprintf(__bambu_testbench_fp, "//expected value for return value\n");
      fprintf(__bambu_testbench_fp, "o00000000000000000000000000000000\n");
      fprintf(__bambu_testbench_fp, "e\n");
   }
}

void _Dec2Bin_(FILE * __bambu_testbench_fp, long long int num, unsigned int precision)
{
   unsigned int i;
   unsigned long long int ull_value = (unsigned long long int) num;
   for (i = 0; i < precision; ++i)
   fprintf(__bambu_testbench_fp, "%c", (((1LLU << (precision - i -1)) & ull_value) ? '1' : '0'));
}

void _Ptd2Bin_(FILE * __bambu_testbench_fp, unsigned char * num, unsigned int precision)
{
   unsigned int i, j;
   char value;
   if (precision%8)
   {
      value = *(num+precision/8);
      for (j = 8-precision%8; j < 8; ++j)
      fprintf(__bambu_testbench_fp, "%c", (((1LLU << (8 - j - 1)) & value) ? '1' : '0'));
   }
   for (i = 0; i < 8*(precision/8); i = i + 8)
   {
      value = *(num + (precision / 8) - (i / 8) - 1);
      for (j = 0; j < 8; ++j)
      fprintf(__bambu_testbench_fp, "%c", (((1LLU << (8 - j - 1)) & value) ? '1' : '0'));
   }
}

unsigned int example_multiple_forLoop_multiple(unsigned int Pd5, unsigned int Pd6, unsigned int Pd7, unsigned int Pd8);

#undef main
int main()
{
   unsigned int __testbench_index, __testbench_index0, __testbench_index1, __testbench_index2;
   __standard_exit = 0;
   __bambu_testbench_fp = fopen("HLS_output//simulation/values.txt", "w");
   if (!__bambu_testbench_fp) {
      perror("can't open file: HLS_output//simulation/values.txt");
      exit(1);
   }
   
   // parameters declaration
   unsigned int Pd5;
   unsigned int Pd6;
   unsigned int Pd7;
   unsigned int Pd8;
   fprintf(__bambu_testbench_fp, "//base address 1073741824\n");
   fprintf(__bambu_testbench_fp, "b01000000000000000000000000000000\n");
   {
   }
   // return variable initialization
   unsigned int return_port;
   {
      // parameter initialization
      Pd5 = 17;
      fprintf(__bambu_testbench_fp, "//parameter: Pd5 value: 17\n");
      fprintf(__bambu_testbench_fp, "p00000000000000000000000000010001\n");
      Pd6 = 5;
      fprintf(__bambu_testbench_fp, "//parameter: Pd6 value: 5\n");
      fprintf(__bambu_testbench_fp, "p00000000000000000000000000000101\n");
      Pd7 = 15;
      fprintf(__bambu_testbench_fp, "//parameter: Pd7 value: 15\n");
      fprintf(__bambu_testbench_fp, "p00000000000000000000000000001111\n");
      Pd8 = 9;
      fprintf(__bambu_testbench_fp, "//parameter: Pd8 value: 9\n");
      fprintf(__bambu_testbench_fp, "p00000000000000000000000000001001\n");
      // function call
      return_port = example_multiple_forLoop_multiple(Pd5, Pd6, Pd7, Pd8);
      // print expected results
      fprintf(__bambu_testbench_fp, "o");
      _Dec2Bin_(__bambu_testbench_fp, return_port, 32);
      fprintf(__bambu_testbench_fp, "\n");
      fprintf(__bambu_testbench_fp, "e\n");
   }
   __standard_exit = 1;
   exit(0);
}

