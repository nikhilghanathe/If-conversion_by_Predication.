// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 0.9.6 - Revision 5e5e306b86383a7d85274d64977a3d71fdcff4fe - Date 2020-05-02T11:35:33
// /opt/panda/bin/bambu executed with: /opt/panda/bin/bambu --compiler=I386_CLANG6 example_tranformed.ll 
// 
// Send any bug to: panda-info@polimi.it
// ************************************************************************
// The following text holds for all the components tagged with PANDA_LGPLv3.
// They are all part of the BAMBU/PANDA IP LIBRARY.
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 3 of the License, or (at your option) any later version.
// 
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public
// License along with the PandA framework; see the files COPYING.LIB
// If not, see <http://www.gnu.org/licenses/>.
// ************************************************************************

`ifdef __ICARUS__
  `define _SIM_HAVE_CLOG2
`endif
`ifdef VERILATOR
  `define _SIM_HAVE_CLOG2
`endif
`ifdef MODEL_TECH
  `define _SIM_HAVE_CLOG2
`endif
`ifdef VCS
  `define _SIM_HAVE_CLOG2
`endif
`ifdef NCVERILOG
  `define _SIM_HAVE_CLOG2
`endif
`ifdef XILINX_SIMULATOR
  `define _SIM_HAVE_CLOG2
`endif
`ifdef XILINX_ISIM
  `define _SIM_HAVE_CLOG2
`endif

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>, Christian Pilato <christian.pilato@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module constant_value(out1);
  parameter BITSIZE_out1=1, value=1'b0;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = value;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2016-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module lut_expr_FU(in1, in2, in3, in4, in5, in6, in7, in8, in9, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input in2;
  input in3;
  input in4;
  input in5;
  input in6;
  input in7;
  input in8;
  input in9;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  
  reg[7:0] cleaned_in0;
  wire [7:0] in0;
  wire[BITSIZE_in1-1:0] shifted_s;
  
  assign in0 = {in9, in8, in7, in6, in5, in4, in3, in2};
  generate
  genvar i0;
  for (i0=0; i0<8; i0=i0+1)
  begin : L0
        always @(*)
        begin
           if (in0[i0] == 1'b1)
              cleaned_in0[i0] = 1'b1;
           else
              cleaned_in0[i0] = 1'b0;
        end
    end
  endgenerate
  assign shifted_s = in1 >> cleaned_in0;
  assign out1[0] = shifted_s[0];
  generate
   if(BITSIZE_out1 > 1)
     assign out1[BITSIZE_out1-1:1] = 0;
  endgenerate

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_bit_and_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 & in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2016-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_bit_ior_concat_expr_FU(in1, in2, in3, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_in3=1, BITSIZE_out1=1, OFFSET_PARAMETER=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  input [BITSIZE_in3-1:0] in3;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  parameter nbit_out = BITSIZE_out1 > OFFSET_PARAMETER ? BITSIZE_out1 : 1+OFFSET_PARAMETER;
  wire [nbit_out-1:0] tmp_in1;
  wire [OFFSET_PARAMETER-1:0] tmp_in2;
  generate
    if(BITSIZE_in1 >= nbit_out)
      assign tmp_in1=in1[nbit_out-1:0];
    else
      assign tmp_in1={{(nbit_out-BITSIZE_in1){1'b0}},in1};
  endgenerate
  generate
    if(BITSIZE_in2 >= OFFSET_PARAMETER)
      assign tmp_in2=in2[OFFSET_PARAMETER-1:0];
    else
      assign tmp_in2={{(OFFSET_PARAMETER-BITSIZE_in2){1'b0}},in2};
  endgenerate
  assign out1 = {tmp_in1[nbit_out-1:OFFSET_PARAMETER] , tmp_in2};
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_cond_expr_FU(in1, in2, in3, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_in3=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  input [BITSIZE_in3-1:0] in3;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 != 0 ? in2 : in3;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_eq_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 == in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_lshift_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1, PRECISION=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  `ifndef _SIM_HAVE_CLOG2
    function integer log2;
       input integer value;
       integer temp_value;
      begin
        temp_value = value-1;
        for (log2=0; temp_value>0; log2=log2+1)
          temp_value = temp_value>>1;
      end
    endfunction
  `endif
  `ifdef _SIM_HAVE_CLOG2
    parameter arg2_bitsize = $clog2(PRECISION);
  `else
    parameter arg2_bitsize = log2(PRECISION);
  `endif
  generate
    if(BITSIZE_in2 > arg2_bitsize)
      assign out1 = in1 << in2[arg2_bitsize-1:0];
    else
      assign out1 = in1 << in2;
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_plus_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 + in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_rshift_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1, PRECISION=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  `ifndef _SIM_HAVE_CLOG2
    function integer log2;
       input integer value;
       integer temp_value;
      begin
        temp_value = value-1;
        for (log2=0; temp_value>0; log2=log2+1)
          temp_value = temp_value>>1;
      end
    endfunction
  `endif
  `ifdef _SIM_HAVE_CLOG2
    parameter arg2_bitsize = $clog2(PRECISION);
  `else
    parameter arg2_bitsize = log2(PRECISION);
  `endif
  generate
    if(BITSIZE_in2 > arg2_bitsize)
      assign out1 = in1 >> (in2[arg2_bitsize-1:0]);
    else
      assign out1 = in1 >> in2;
  endgenerate

endmodule

// Datapath RTL description for example
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_example(clock, reset, in_port_Pd5, in_port_Pd6, in_port_Pd7, in_port_Pd8, return_port);
  // IN
  input clock;
  input reset;
  input [31:0] in_port_Pd5;
  input [31:0] in_port_Pd6;
  input [31:0] in_port_Pd7;
  input [31:0] in_port_Pd8;
  // OUT
  output [31:0] return_port;
  // Component and signal declarations
  wire out_const_0;
  wire out_const_1;
  wire [3:0] out_const_2;
  wire out_lut_expr_FU_2_i0_fu_example_419510_419644;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_4_i0_fu_example_419510_419615;
  wire [30:0] out_ui_bit_ior_concat_expr_FU_5_i0_fu_example_419510_419595;
  wire [30:0] out_ui_cond_expr_FU_32_32_32_32_6_i0_fu_example_419510_419540;
  wire out_ui_eq_expr_FU_32_0_32_7_i0_fu_example_419510_419583;
  wire out_ui_eq_expr_FU_32_0_32_8_i0_fu_example_419510_419586;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_9_i0_fu_example_419510_419592;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_9_i1_fu_example_419510_419598;
  wire [30:0] out_ui_lshift_expr_FU_32_0_32_9_i2_fu_example_419510_419612;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_9_i3_fu_example_419510_419624;
  wire [31:0] out_ui_plus_expr_FU_32_32_32_10_i0_fu_example_419510_419536;
  wire [29:0] out_ui_plus_expr_FU_32_32_32_10_i1_fu_example_419510_419608;
  wire [30:0] out_ui_rshift_expr_FU_32_0_32_11_i0_fu_example_419510_419602;
  wire [30:0] out_ui_rshift_expr_FU_32_0_32_11_i1_fu_example_419510_419606;
  wire [30:0] out_ui_rshift_expr_FU_32_0_32_11_i2_fu_example_419510_419620;
  
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(4), .value(4'b1000)) const_2 (.out1(out_const_2));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) fu_example_419510_419536 (.out1(out_ui_plus_expr_FU_32_32_32_10_i0_fu_example_419510_419536), .in1(in_port_Pd6), .in2(in_port_Pd5));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(31), .BITSIZE_in3(1), .BITSIZE_out1(31)) fu_example_419510_419540 (.out1(out_ui_cond_expr_FU_32_32_32_32_6_i0_fu_example_419510_419540), .in1(out_lut_expr_FU_2_i0_fu_example_419510_419644), .in2(out_ui_rshift_expr_FU_32_0_32_11_i2_fu_example_419510_419620), .in3(out_const_0));
  ui_eq_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_example_419510_419583 (.out1(out_ui_eq_expr_FU_32_0_32_7_i0_fu_example_419510_419583), .in1(in_port_Pd7), .in2(out_const_1));
  ui_eq_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_example_419510_419586 (.out1(out_ui_eq_expr_FU_32_0_32_8_i0_fu_example_419510_419586), .in1(in_port_Pd8), .in2(out_const_0));
  ui_lshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32), .PRECISION(32)) fu_example_419510_419592 (.out1(out_ui_lshift_expr_FU_32_0_32_9_i0_fu_example_419510_419592), .in1(out_ui_plus_expr_FU_32_32_32_10_i0_fu_example_419510_419536), .in2(out_const_1));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(31), .OFFSET_PARAMETER(1)) fu_example_419510_419595 (.out1(out_ui_bit_ior_concat_expr_FU_5_i0_fu_example_419510_419595), .in1(out_ui_lshift_expr_FU_32_0_32_9_i2_fu_example_419510_419612), .in2(out_ui_bit_and_expr_FU_1_0_1_4_i0_fu_example_419510_419615), .in3(out_const_1));
  ui_lshift_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(1), .BITSIZE_out1(32), .PRECISION(32)) fu_example_419510_419598 (.out1(out_ui_lshift_expr_FU_32_0_32_9_i1_fu_example_419510_419598), .in1(out_ui_bit_ior_concat_expr_FU_5_i0_fu_example_419510_419595), .in2(out_const_1));
  ui_rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(31), .PRECISION(32)) fu_example_419510_419602 (.out1(out_ui_rshift_expr_FU_32_0_32_11_i0_fu_example_419510_419602), .in1(out_ui_lshift_expr_FU_32_0_32_9_i0_fu_example_419510_419592), .in2(out_const_1));
  ui_rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(31), .PRECISION(32)) fu_example_419510_419606 (.out1(out_ui_rshift_expr_FU_32_0_32_11_i1_fu_example_419510_419606), .in1(out_ui_plus_expr_FU_32_32_32_10_i0_fu_example_419510_419536), .in2(out_const_1));
  ui_plus_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(31), .BITSIZE_out1(30)) fu_example_419510_419608 (.out1(out_ui_plus_expr_FU_32_32_32_10_i1_fu_example_419510_419608), .in1(out_ui_rshift_expr_FU_32_0_32_11_i0_fu_example_419510_419602), .in2(out_ui_rshift_expr_FU_32_0_32_11_i1_fu_example_419510_419606));
  ui_lshift_expr_FU #(.BITSIZE_in1(30), .BITSIZE_in2(1), .BITSIZE_out1(31), .PRECISION(32)) fu_example_419510_419612 (.out1(out_ui_lshift_expr_FU_32_0_32_9_i2_fu_example_419510_419612), .in1(out_ui_plus_expr_FU_32_32_32_10_i1_fu_example_419510_419608), .in2(out_const_1));
  ui_bit_and_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_example_419510_419615 (.out1(out_ui_bit_and_expr_FU_1_0_1_4_i0_fu_example_419510_419615), .in1(out_ui_plus_expr_FU_32_32_32_10_i0_fu_example_419510_419536), .in2(out_const_1));
  ui_rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(31), .PRECISION(32)) fu_example_419510_419620 (.out1(out_ui_rshift_expr_FU_32_0_32_11_i2_fu_example_419510_419620), .in1(out_ui_lshift_expr_FU_32_0_32_9_i1_fu_example_419510_419598), .in2(out_const_1));
  ui_lshift_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(1), .BITSIZE_out1(32), .PRECISION(32)) fu_example_419510_419624 (.out1(out_ui_lshift_expr_FU_32_0_32_9_i3_fu_example_419510_419624), .in1(out_ui_cond_expr_FU_32_32_32_32_6_i0_fu_example_419510_419540), .in2(out_const_1));
  lut_expr_FU #(.BITSIZE_in1(4), .BITSIZE_out1(1)) fu_example_419510_419644 (.out1(out_lut_expr_FU_2_i0_fu_example_419510_419644), .in1(out_const_2), .in2(out_ui_eq_expr_FU_32_0_32_7_i0_fu_example_419510_419583), .in3(out_ui_eq_expr_FU_32_0_32_8_i0_fu_example_419510_419586), .in4(1'b0), .in5(1'b0), .in6(1'b0), .in7(1'b0), .in8(1'b0), .in9(1'b0));
  // io-signal post fix
  assign return_port = out_ui_lshift_expr_FU_32_0_32_9_i3_fu_example_419510_419624;

endmodule

// FSM based controller description for example
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_example(done_port, clock, reset, start_port);
  // IN
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  parameter [0:0] S_0 = 1'b1;
  reg [0:0] _present_state, _next_state;
  reg done_port;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          _next_state = S_0;
          done_port = 1'b1;
        end
        else
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
        end
    endcase
  end
endmodule

// Top component for example
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module _example(clock, reset, start_port, done_port, Pd5, Pd6, Pd7, Pd8, return_port);
  // IN
  input clock;
  input reset;
  input start_port;
  input [31:0] Pd5;
  input [31:0] Pd6;
  input [31:0] Pd7;
  input [31:0] Pd8;
  // OUT
  output done_port;
  output [31:0] return_port;
  // Component and signal declarations
  
  controller_example Controller_i (.done_port(done_port), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_example Datapath_i (.return_port(return_port), .clock(clock), .reset(reset), .in_port_Pd5(Pd5), .in_port_Pd6(Pd6), .in_port_Pd7(Pd7), .in_port_Pd8(Pd8));

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_view_convert_expr_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// Minimal interface for function: example
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module example(clock, reset, start_port, Pd5, Pd6, Pd7, Pd8, done_port, return_port);
  // IN
  input clock;
  input reset;
  input start_port;
  input [31:0] Pd5;
  input [31:0] Pd6;
  input [31:0] Pd7;
  input [31:0] Pd8;
  // OUT
  output done_port;
  output [31:0] return_port;
  // Component and signal declarations
  wire [31:0] out_return_port_ui_view_convert_expr_FU;
  
  _example _example_i0 (.done_port(done_port), .return_port(out_return_port_ui_view_convert_expr_FU), .clock(clock), .reset(reset), .start_port(start_port), .Pd5(Pd5), .Pd6(Pd6), .Pd7(Pd7), .Pd8(Pd8));
  ui_view_convert_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) return_port_ui_view_convert_expr_FU (.out1(return_port), .in1(out_return_port_ui_view_convert_expr_FU));

endmodule


