#!/bin/bash
##########################################################
#     Automatically generated by the PandA framework     #
##########################################################

# COMPONENT: example_multiple_forLoop_multiple_statements_multiple

#IVERILOG
iverilog top.v HLS_output//simulation/testbench_example_multiple_forLoop_multiple_statements_multiple.v -g2001-noconfig -gstrict-ca-eval -v >& HLS_output//icarus_beh/example_multiple_forLoop_multiple_statements_multiple_icarus.log

#VVP
vvp a.out 2>&1 | tee -a HLS_output//icarus_beh/example_multiple_forLoop_multiple_statements_multiple_icarus.log


