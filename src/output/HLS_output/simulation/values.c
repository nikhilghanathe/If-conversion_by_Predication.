/*
 * Politecnico di Milano
 * Code created using PandA - Version: PandA 0.9.6 - Revision 5e5e306b86383a7d85274d64977a3d71fdcff4fe - Date 2020-05-03T21:40:13
 * /opt/panda/bin/bambu executed with: /opt/panda/bin/bambu --simulate ../../benchmarks/example_statements_multiple_nestedLoop.c 
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

int example_statements_multiple_nestedLoop(int a, int b, int c, int d, int* e, int* f, int* g);

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
   int a;
   int b;
   int c;
   int d;
   int* e;
   int* f;
   int* g;
   fprintf(__bambu_testbench_fp, "//base address 1073741824\n");
   fprintf(__bambu_testbench_fp, "b01000000000000000000000000000000\n");
   {
      fprintf(__bambu_testbench_fp, "//memory initialization for variable: internal_26666 value: 0\n");
      for (__testbench_index = 0; __testbench_index < 4; ++__testbench_index)
         fprintf(__bambu_testbench_fp, "m00000000\n");
      // next_object_offset > reserved_mem_bytes
      for (__testbench_index = 0; __testbench_index < 28; ++__testbench_index)
         fprintf(__bambu_testbench_fp, "m00000000\n");
      fprintf(__bambu_testbench_fp, "//memory initialization for variable: internal_26666 value: 0\n");
      for (__testbench_index = 0; __testbench_index < 4; ++__testbench_index)
         fprintf(__bambu_testbench_fp, "m00000000\n");
      // next_object_offset > reserved_mem_bytes
      for (__testbench_index = 0; __testbench_index < 28; ++__testbench_index)
         fprintf(__bambu_testbench_fp, "m00000000\n");
      fprintf(__bambu_testbench_fp, "//memory initialization for variable: internal_26666 value: 0\n");
      for (__testbench_index = 0; __testbench_index < 4; ++__testbench_index)
         fprintf(__bambu_testbench_fp, "m00000000\n");
      // next_object_offset > reserved_mem_bytes
      for (__testbench_index = 0; __testbench_index < 28; ++__testbench_index)
         fprintf(__bambu_testbench_fp, "m00000000\n");
   }
   // return variable initialization
   int return_port;
   {
      // parameter initialization
      a = 5;
      fprintf(__bambu_testbench_fp, "//parameter: a value: 5\n");
      fprintf(__bambu_testbench_fp, "p00000000000000000000000000000101\n");
      b = 14;
      fprintf(__bambu_testbench_fp, "//parameter: b value: 14\n");
      fprintf(__bambu_testbench_fp, "p00000000000000000000000000001110\n");
      c = 12;
      fprintf(__bambu_testbench_fp, "//parameter: c value: 12\n");
      fprintf(__bambu_testbench_fp, "p00000000000000000000000000001100\n");
      d = 6;
      fprintf(__bambu_testbench_fp, "//parameter: d value: 6\n");
      fprintf(__bambu_testbench_fp, "p00000000000000000000000000000110\n");
      int e_temp[] = {0};
      e = e_temp;
      fprintf(__bambu_testbench_fp, "//parameter: e value: 1073741824\n");
      fprintf(__bambu_testbench_fp, "p01000000000000000000000000000000\n");
      int f_temp[] = {0};
      f = f_temp;
      fprintf(__bambu_testbench_fp, "//parameter: f value: 1073741856\n");
      fprintf(__bambu_testbench_fp, "p01000000000000000000000000100000\n");
      int g_temp[] = {0};
      g = g_temp;
      fprintf(__bambu_testbench_fp, "//parameter: g value: 1073741888\n");
      fprintf(__bambu_testbench_fp, "p01000000000000000000000001000000\n");
      // function call
      return_port = example_statements_multiple_nestedLoop(a, b, c, d, e, f, g);
      // print expected results
      {
         int i0;
         for(i0 = 0; i0 < 1; i0++)
         {
            fprintf(__bambu_testbench_fp, "//expected value for output: e[i0]\n");
            fprintf(__bambu_testbench_fp, "o");
            _Ptd2Bin_(__bambu_testbench_fp, ((unsigned char *)&(e[i0])) + 0, 8);
            fprintf(__bambu_testbench_fp, "\n");
            fprintf(__bambu_testbench_fp, "o");
            _Ptd2Bin_(__bambu_testbench_fp, ((unsigned char *)&(e[i0])) + 1, 8);
            fprintf(__bambu_testbench_fp, "\n");
            fprintf(__bambu_testbench_fp, "o");
            _Ptd2Bin_(__bambu_testbench_fp, ((unsigned char *)&(e[i0])) + 2, 8);
            fprintf(__bambu_testbench_fp, "\n");
            fprintf(__bambu_testbench_fp, "o");
            _Ptd2Bin_(__bambu_testbench_fp, ((unsigned char *)&(e[i0])) + 3, 8);
            fprintf(__bambu_testbench_fp, "\n");
         }
         fprintf(__bambu_testbench_fp, "e\n");
      }
      {
         int i0;
         for(i0 = 0; i0 < 1; i0++)
         {
            fprintf(__bambu_testbench_fp, "//expected value for output: f[i0]\n");
            fprintf(__bambu_testbench_fp, "o");
            _Ptd2Bin_(__bambu_testbench_fp, ((unsigned char *)&(f[i0])) + 0, 8);
            fprintf(__bambu_testbench_fp, "\n");
            fprintf(__bambu_testbench_fp, "o");
            _Ptd2Bin_(__bambu_testbench_fp, ((unsigned char *)&(f[i0])) + 1, 8);
            fprintf(__bambu_testbench_fp, "\n");
            fprintf(__bambu_testbench_fp, "o");
            _Ptd2Bin_(__bambu_testbench_fp, ((unsigned char *)&(f[i0])) + 2, 8);
            fprintf(__bambu_testbench_fp, "\n");
            fprintf(__bambu_testbench_fp, "o");
            _Ptd2Bin_(__bambu_testbench_fp, ((unsigned char *)&(f[i0])) + 3, 8);
            fprintf(__bambu_testbench_fp, "\n");
         }
         fprintf(__bambu_testbench_fp, "e\n");
      }
      {
         int i0;
         for(i0 = 0; i0 < 1; i0++)
         {
            fprintf(__bambu_testbench_fp, "//expected value for output: g[i0]\n");
            fprintf(__bambu_testbench_fp, "o");
            _Ptd2Bin_(__bambu_testbench_fp, ((unsigned char *)&(g[i0])) + 0, 8);
            fprintf(__bambu_testbench_fp, "\n");
            fprintf(__bambu_testbench_fp, "o");
            _Ptd2Bin_(__bambu_testbench_fp, ((unsigned char *)&(g[i0])) + 1, 8);
            fprintf(__bambu_testbench_fp, "\n");
            fprintf(__bambu_testbench_fp, "o");
            _Ptd2Bin_(__bambu_testbench_fp, ((unsigned char *)&(g[i0])) + 2, 8);
            fprintf(__bambu_testbench_fp, "\n");
            fprintf(__bambu_testbench_fp, "o");
            _Ptd2Bin_(__bambu_testbench_fp, ((unsigned char *)&(g[i0])) + 3, 8);
            fprintf(__bambu_testbench_fp, "\n");
         }
         fprintf(__bambu_testbench_fp, "e\n");
      }
      fprintf(__bambu_testbench_fp, "o");
      _Dec2Bin_(__bambu_testbench_fp, return_port, 32);
      fprintf(__bambu_testbench_fp, "\n");
      fprintf(__bambu_testbench_fp, "e\n");
   }
   __standard_exit = 1;
   exit(0);
}

