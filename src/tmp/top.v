// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 0.9.6 - Revision 5e5e306b86383a7d85274d64977a3d71fdcff4fe - Date 2020-04-30T10:43:54
// /opt/panda/bin/bambu executed with: /opt/panda/bin/bambu --compiler=I386_CLANG6 example.ll 
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
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module register_SE(clock, reset, in1, wenable, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input clock;
  input reset;
  input [BITSIZE_in1-1:0] in1;
  input wenable;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  
  reg [BITSIZE_out1-1:0] reg_out1 =0;
  assign out1 = reg_out1;
  always @(posedge clock)
    if (wenable)
      reg_out1 <= in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module register_STD(clock, reset, in1, wenable, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input clock;
  input reset;
  input [BITSIZE_in1-1:0] in1;
  input wenable;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  reg [BITSIZE_out1-1:0] reg_out1 =0;
  assign out1 = reg_out1;
  always @(posedge clock)
    reg_out1 <= in1;

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ARRAY_1D_STD_DISTRAM_NN_SDS(clock, reset, in1, in2, in3, in4, out1, sel_LOAD, sel_STORE, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, Sin_Rdata_ram, Sout_Rdata_ram, S_data_ram_size, Sin_DataRdy, Sout_DataRdy, proxy_in1, proxy_in2, proxy_in3, proxy_sel_LOAD, proxy_sel_STORE, proxy_out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_in2=1, PORTSIZE_in2=2, BITSIZE_in3=1, PORTSIZE_in3=2, BITSIZE_in4=1, PORTSIZE_in4=2, BITSIZE_sel_LOAD=1, PORTSIZE_sel_LOAD=2, BITSIZE_sel_STORE=1, PORTSIZE_sel_STORE=2, BITSIZE_S_oe_ram=1, PORTSIZE_S_oe_ram=2, BITSIZE_S_we_ram=1, PORTSIZE_S_we_ram=2, BITSIZE_out1=1, PORTSIZE_out1=2, BITSIZE_S_addr_ram=1, PORTSIZE_S_addr_ram=2, BITSIZE_S_Wdata_ram=8, PORTSIZE_S_Wdata_ram=2, BITSIZE_Sin_Rdata_ram=8, PORTSIZE_Sin_Rdata_ram=2, BITSIZE_Sout_Rdata_ram=8, PORTSIZE_Sout_Rdata_ram=2, BITSIZE_S_data_ram_size=1, PORTSIZE_S_data_ram_size=2, BITSIZE_Sin_DataRdy=1, PORTSIZE_Sin_DataRdy=2, BITSIZE_Sout_DataRdy=1, PORTSIZE_Sout_DataRdy=2, MEMORY_INIT_file="array.mem", n_elements=1, data_size=32, address_space_begin=0, address_space_rangesize=4, BUS_PIPELINED=1, BRAM_BITSIZE=32, PRIVATE_MEMORY=0, READ_ONLY_MEMORY=0, USE_SPARSE_MEMORY=1, BITSIZE_proxy_in1=1, PORTSIZE_proxy_in1=2, BITSIZE_proxy_in2=1, PORTSIZE_proxy_in2=2, BITSIZE_proxy_in3=1, PORTSIZE_proxy_in3=2, BITSIZE_proxy_sel_LOAD=1, PORTSIZE_proxy_sel_LOAD=2, BITSIZE_proxy_sel_STORE=1, PORTSIZE_proxy_sel_STORE=2, BITSIZE_proxy_out1=1, PORTSIZE_proxy_out1=2;
  // IN
  input clock;
  input reset;
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  input [(PORTSIZE_in2*BITSIZE_in2)+(-1):0] in2;
  input [(PORTSIZE_in3*BITSIZE_in3)+(-1):0] in3;
  input [PORTSIZE_in4-1:0] in4;
  input [PORTSIZE_sel_LOAD-1:0] sel_LOAD;
  input [PORTSIZE_sel_STORE-1:0] sel_STORE;
  input [PORTSIZE_S_oe_ram-1:0] S_oe_ram;
  input [PORTSIZE_S_we_ram-1:0] S_we_ram;
  input [(PORTSIZE_S_addr_ram*BITSIZE_S_addr_ram)+(-1):0] S_addr_ram;
  input [(PORTSIZE_S_Wdata_ram*BITSIZE_S_Wdata_ram)+(-1):0] S_Wdata_ram;
  input [(PORTSIZE_Sin_Rdata_ram*BITSIZE_Sin_Rdata_ram)+(-1):0] Sin_Rdata_ram;
  input [(PORTSIZE_S_data_ram_size*BITSIZE_S_data_ram_size)+(-1):0] S_data_ram_size;
  input [PORTSIZE_Sin_DataRdy-1:0] Sin_DataRdy;
  input [(PORTSIZE_proxy_in1*BITSIZE_proxy_in1)+(-1):0] proxy_in1;
  input [(PORTSIZE_proxy_in2*BITSIZE_proxy_in2)+(-1):0] proxy_in2;
  input [(PORTSIZE_proxy_in3*BITSIZE_proxy_in3)+(-1):0] proxy_in3;
  input [PORTSIZE_proxy_sel_LOAD-1:0] proxy_sel_LOAD;
  input [PORTSIZE_proxy_sel_STORE-1:0] proxy_sel_STORE;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  output [(PORTSIZE_Sout_Rdata_ram*BITSIZE_Sout_Rdata_ram)+(-1):0] Sout_Rdata_ram;
  output [PORTSIZE_Sout_DataRdy-1:0] Sout_DataRdy;
  output [(PORTSIZE_proxy_out1*BITSIZE_proxy_out1)+(-1):0] proxy_out1;
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
  parameter n_byte_data = BRAM_BITSIZE/8;
  parameter n_bytes = n_elements*n_byte_data;
  parameter n_byte_on_databus = BRAM_BITSIZE/8;
  parameter n_mem_elements = n_bytes/(n_byte_on_databus) + (n_bytes % (n_byte_on_databus) == 0 ? 0 : 1);
  parameter nbit_addr = BITSIZE_in2 > BITSIZE_proxy_in2 ? BITSIZE_in2 : BITSIZE_proxy_in2;
  `ifdef _SIM_HAVE_CLOG2
    parameter nbit_read_addr = n_mem_elements == 1 ? 1 : $clog2(n_mem_elements);
    parameter nbits_byte_offset = n_byte_on_databus==1 ? 0 : $clog2(n_byte_on_databus);
  `else
    parameter nbit_read_addr = n_mem_elements == 1 ? 1 : log2(n_mem_elements);
    parameter nbits_byte_offset = n_byte_on_databus==1 ? 0 : log2(n_byte_on_databus);
  `endif
  parameter max_n_writes = PORTSIZE_sel_STORE;
  parameter max_n_reads = PORTSIZE_sel_LOAD;
  parameter max_n_rw = max_n_writes > max_n_reads ? max_n_writes : max_n_reads;
  
  wire [max_n_writes-1:0] bram_write;
  
  wire [nbit_read_addr*max_n_rw-1:0] memory_addr_a;
  wire [nbit_read_addr-1:0] memory_addr_a_0;
  wire [nbit_read_addr-1:0] memory_addr_a_1;
  
  wire [data_size*max_n_writes-1:0] din_value_aggregated;
  wire [data_size*max_n_reads-1:0] dout_a;
  wire [nbit_addr*max_n_rw-1:0] tmp_addr;
  wire [nbit_addr*max_n_rw-1:0] relative_addr;
  wire [PORTSIZE_sel_LOAD-1:0] int_sel_LOAD;
  wire [PORTSIZE_sel_STORE-1:0] int_sel_STORE;
  integer index2;
  
  reg [data_size-1:0] memory [0:n_elements-1] /* synthesis syn_ramstyle = "no_rw_check" */;
  
  initial
  begin
    $readmemb(MEMORY_INIT_file, memory, 0, n_elements-1);
  end
  
  generate
  genvar ind2;
  for (ind2=0; ind2<max_n_rw; ind2=ind2+1)
    begin : Lind2
      assign tmp_addr[(ind2+1)*nbit_addr-1:ind2*nbit_addr] = (proxy_sel_LOAD[ind2]||proxy_sel_STORE[ind2]) ? proxy_in2[(ind2+1)*BITSIZE_proxy_in2-1:ind2*BITSIZE_proxy_in2] : in2[(ind2+1)*BITSIZE_in2-1:ind2*BITSIZE_in2];
    end
  endgenerate
  
  generate
  genvar i6;
    for (i6=0; i6<max_n_rw; i6=i6+1)
    begin : L6
      if(USE_SPARSE_MEMORY==1)
        assign relative_addr[(i6)*nbit_addr+nbit_addr-1:i6*nbit_addr] = tmp_addr[(i6)*nbit_addr+nbit_addr-1:i6*nbit_addr];
      else
        assign relative_addr[(i6+1)*nbit_addr-1:i6*nbit_addr] = tmp_addr[(i6+1)*nbit_addr-1:i6*nbit_addr]-address_space_begin;
    end
  endgenerate
  
  generate
  genvar i7;
    for (i7=0; i7<max_n_rw; i7=i7+1)
    begin : L7_A
      if (n_mem_elements==1)
        assign memory_addr_a[(i7+1)*nbit_read_addr-1:i7*nbit_read_addr] = {nbit_read_addr{1'b0}};
      else
        assign memory_addr_a[(i7+1)*nbit_read_addr-1:i7*nbit_read_addr] = relative_addr[nbit_read_addr+nbits_byte_offset-1+i7*nbit_addr:nbits_byte_offset+i7*nbit_addr];
    end
  endgenerate
  
  generate
  genvar i14;
    for (i14=0; i14<max_n_writes; i14=i14+1)
    begin : L14
      assign din_value_aggregated[(i14+1)*data_size-1:i14*data_size] = proxy_sel_STORE[i14] ? proxy_in1[(i14+1)*BITSIZE_proxy_in1-1:i14*BITSIZE_proxy_in1] : in1[(i14+1)*BITSIZE_in1-1:i14*BITSIZE_in1];
    end
  endgenerate
  
  generate
  genvar i11;
    for (i11=0; i11<max_n_reads; i11=i11+1)
    begin : asynchronous_read
      assign dout_a[data_size*i11+:data_size] = memory[memory_addr_a[nbit_read_addr*i11+:nbit_read_addr]];
    end
  endgenerate
  
  assign memory_addr_a_0 = memory_addr_a[nbit_read_addr*0+:nbit_read_addr];
  assign memory_addr_a_1 = memory_addr_a[nbit_read_addr*1+:nbit_read_addr];
  
  generate if(READ_ONLY_MEMORY==0)
    always @(posedge clock)
    begin
      if(bram_write[0])
        memory[memory_addr_a_0] <= din_value_aggregated[data_size*0+:data_size];
      if(bram_write[1])
        memory[memory_addr_a_1] <= din_value_aggregated[data_size*1+:data_size];
    end
  endgenerate
  
  generate
  genvar i21;
    for (i21=0; i21<max_n_writes; i21=i21+1)
    begin : L21
        assign bram_write[i21] = int_sel_STORE[i21] || proxy_sel_STORE[i21];
    end
  endgenerate
  
  generate
  genvar i20;
    for (i20=0; i20<max_n_reads; i20=i20+1)
    begin : L20
      assign out1[(i20+1)*BITSIZE_out1-1:i20*BITSIZE_out1] = dout_a[(i20+1)*data_size-1:i20*data_size];
      assign proxy_out1[(i20+1)*BITSIZE_proxy_out1-1:i20*BITSIZE_proxy_out1] = dout_a[(i20+1)*data_size-1:i20*data_size];
    end
  endgenerate
  assign Sout_Rdata_ram =Sin_Rdata_ram;
  assign Sout_DataRdy = Sin_DataRdy;
  assign int_sel_LOAD = sel_LOAD & in4;
  assign int_sel_STORE = sel_STORE & in4;
  
  assign Sout_DataRdy = Sin_DataRdy;

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module addr_expr_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module read_cond_FU(in1, out1);
  parameter BITSIZE_in1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output out1;
  assign out1 = in1 != {BITSIZE_in1{1'b0}};
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

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ASSIGN_VECTOR_BOOL_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module UUdata_converter_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  generate
  if (BITSIZE_out1 <= BITSIZE_in1)
  begin
    assign out1 = in1[BITSIZE_out1-1:0];
  end
  else
  begin
    assign out1 = {{(BITSIZE_out1-BITSIZE_in1){1'b0}},in1};
  end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>, Christian Pilato <christian.pilato@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module MUX_GATE(sel, in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input sel;
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = sel ? in1 : in2;
endmodule

// Datapath RTL description for example
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_example(clock, reset, in_port_P0, in_port_P1, in_port_P2, in_port_P3, return_port, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_STORE, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_STORE, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_STORE, selector_MUX_12_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_0_0_0, selector_MUX_16_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_0_0_0, selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0, selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0, selector_MUX_9_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_1_0_0, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, OUT_CONDITION_example_419510_419543, OUT_CONDITION_example_419510_419609);
  parameter MEM_var_419547_419510=32, MEM_var_419550_419510=32, MEM_var_419556_419510=32, MEM_var_419559_419510=32, MEM_var_419562_419510=32;
  // IN
  input clock;
  input reset;
  input [31:0] in_port_P0;
  input [31:0] in_port_P1;
  input [31:0] in_port_P2;
  input [31:0] in_port_P3;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_LOAD;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_STORE;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_LOAD;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_STORE;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_LOAD;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_STORE;
  input selector_MUX_12_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_0_0_0;
  input selector_MUX_16_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_0_0_0;
  input selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0;
  input selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0;
  input selector_MUX_9_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_1_0_0;
  input wrenable_reg_0;
  input wrenable_reg_1;
  input wrenable_reg_2;
  input wrenable_reg_3;
  input wrenable_reg_4;
  input wrenable_reg_5;
  input wrenable_reg_6;
  // OUT
  output [31:0] return_port;
  output OUT_CONDITION_example_419510_419543;
  output OUT_CONDITION_example_419510_419609;
  // Component and signal declarations
  wire null_out_signal_array_419547_0_Sout_DataRdy_0;
  wire null_out_signal_array_419547_0_Sout_DataRdy_1;
  wire [31:0] null_out_signal_array_419547_0_Sout_Rdata_ram_0;
  wire [31:0] null_out_signal_array_419547_0_Sout_Rdata_ram_1;
  wire [31:0] null_out_signal_array_419547_0_out1_1;
  wire [31:0] null_out_signal_array_419547_0_proxy_out1_0;
  wire [31:0] null_out_signal_array_419547_0_proxy_out1_1;
  wire null_out_signal_array_419550_0_Sout_DataRdy_0;
  wire null_out_signal_array_419550_0_Sout_DataRdy_1;
  wire [31:0] null_out_signal_array_419550_0_Sout_Rdata_ram_0;
  wire [31:0] null_out_signal_array_419550_0_Sout_Rdata_ram_1;
  wire [31:0] null_out_signal_array_419550_0_out1_1;
  wire [31:0] null_out_signal_array_419550_0_proxy_out1_0;
  wire [31:0] null_out_signal_array_419550_0_proxy_out1_1;
  wire null_out_signal_array_419556_0_Sout_DataRdy_0;
  wire null_out_signal_array_419556_0_Sout_DataRdy_1;
  wire [31:0] null_out_signal_array_419556_0_Sout_Rdata_ram_0;
  wire [31:0] null_out_signal_array_419556_0_Sout_Rdata_ram_1;
  wire [31:0] null_out_signal_array_419556_0_out1_1;
  wire [31:0] null_out_signal_array_419556_0_proxy_out1_0;
  wire [31:0] null_out_signal_array_419556_0_proxy_out1_1;
  wire null_out_signal_array_419559_0_Sout_DataRdy_0;
  wire null_out_signal_array_419559_0_Sout_DataRdy_1;
  wire [31:0] null_out_signal_array_419559_0_Sout_Rdata_ram_0;
  wire [31:0] null_out_signal_array_419559_0_Sout_Rdata_ram_1;
  wire [31:0] null_out_signal_array_419559_0_out1_1;
  wire [31:0] null_out_signal_array_419559_0_proxy_out1_0;
  wire [31:0] null_out_signal_array_419559_0_proxy_out1_1;
  wire null_out_signal_array_419562_0_Sout_DataRdy_0;
  wire null_out_signal_array_419562_0_Sout_DataRdy_1;
  wire [31:0] null_out_signal_array_419562_0_Sout_Rdata_ram_0;
  wire [31:0] null_out_signal_array_419562_0_Sout_Rdata_ram_1;
  wire [31:0] null_out_signal_array_419562_0_out1_1;
  wire [31:0] null_out_signal_array_419562_0_proxy_out1_0;
  wire [31:0] null_out_signal_array_419562_0_proxy_out1_1;
  wire [31:0] out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_array_419547_0;
  wire [31:0] out_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_array_419550_0;
  wire [31:0] out_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_array_419556_0;
  wire [31:0] out_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_array_419559_0;
  wire [31:0] out_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_array_419562_0;
  wire [31:0] out_MUX_12_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_0_0_0;
  wire [31:0] out_MUX_16_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_0_0_0;
  wire [5:0] out_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0;
  wire [5:0] out_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0;
  wire [5:0] out_MUX_9_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_1_0_0;
  wire [5:0] out_addr_expr_FU_10_i0_fu_example_419510_419535;
  wire [5:0] out_addr_expr_FU_11_i0_fu_example_419510_419536;
  wire [5:0] out_addr_expr_FU_7_i0_fu_example_419510_419531;
  wire [5:0] out_addr_expr_FU_8_i0_fu_example_419510_419532;
  wire [5:0] out_addr_expr_FU_9_i0_fu_example_419510_419534;
  wire out_const_0;
  wire [31:0] out_const_1;
  wire [6:0] out_const_2;
  wire out_const_3;
  wire [5:0] out_const_4;
  wire [5:0] out_const_5;
  wire [5:0] out_const_6;
  wire [5:0] out_const_7;
  wire [5:0] out_const_8;
  wire [5:0] out_conv_out_const_2_7_6;
  wire [31:0] out_conv_out_const_4_6_32;
  wire [31:0] out_conv_out_const_5_6_32;
  wire [31:0] out_conv_out_const_6_6_32;
  wire [31:0] out_conv_out_const_7_6_32;
  wire [31:0] out_conv_out_const_8_6_32;
  wire out_read_cond_FU_13_i0_fu_example_419510_419543;
  wire out_read_cond_FU_16_i0_fu_example_419510_419609;
  wire [5:0] out_reg_0_reg_0;
  wire [5:0] out_reg_1_reg_1;
  wire [5:0] out_reg_2_reg_2;
  wire [5:0] out_reg_3_reg_3;
  wire [5:0] out_reg_4_reg_4;
  wire [31:0] out_reg_5_reg_5;
  wire [31:0] out_reg_6_reg_6;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_19_i0_fu_example_419510_419705;
  wire [30:0] out_ui_bit_ior_concat_expr_FU_20_i0_fu_example_419510_419669;
  wire out_ui_eq_expr_FU_32_0_32_21_i0_fu_example_419510_419649;
  wire out_ui_eq_expr_FU_32_0_32_22_i0_fu_example_419510_419657;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_23_i0_fu_example_419510_419666;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_23_i1_fu_example_419510_419672;
  wire [30:0] out_ui_lshift_expr_FU_32_0_32_23_i2_fu_example_419510_419702;
  wire [31:0] out_ui_plus_expr_FU_32_32_32_24_i0_fu_example_419510_419591;
  wire [29:0] out_ui_plus_expr_FU_32_32_32_24_i1_fu_example_419510_419698;
  wire [30:0] out_ui_rshift_expr_FU_32_0_32_25_i0_fu_example_419510_419692;
  wire [30:0] out_ui_rshift_expr_FU_32_0_32_25_i1_fu_example_419510_419696;
  wire [31:0] out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_0;
  wire [31:0] out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_1;
  wire [31:0] out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_2;
  wire [31:0] out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_3;
  wire [31:0] out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4;
  wire [31:0] out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5;
  
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) ASSIGN_VECTOR_BOOL_FU_vb_assign_0 (.out1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_0), .in1(in_port_P0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) ASSIGN_VECTOR_BOOL_FU_vb_assign_1 (.out1(out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_1), .in1(in_port_P1));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) ASSIGN_VECTOR_BOOL_FU_vb_assign_2 (.out1(out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_2), .in1(in_port_P3));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) ASSIGN_VECTOR_BOOL_FU_vb_assign_3 (.out1(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_3), .in1(out_const_1));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) ASSIGN_VECTOR_BOOL_FU_vb_assign_4 (.out1(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4), .in1(out_reg_5_reg_5));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) ASSIGN_VECTOR_BOOL_FU_vb_assign_5 (.out1(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5), .in1(out_reg_6_reg_6));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_12_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_0_0_0 (.out1(out_MUX_12_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_0_0_0), .sel(selector_MUX_12_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_0_0_0), .in1(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_3), .in2(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_16_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_0_0_0 (.out1(out_MUX_16_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_0_0_0), .sel(selector_MUX_16_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_0_0_0), .in1(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_3), .in2(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5));
  MUX_GATE #(.BITSIZE_in1(6), .BITSIZE_in2(6), .BITSIZE_out1(6)) MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0 (.out1(out_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0), .sel(selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0), .in1(out_reg_3_reg_3), .in2(out_addr_expr_FU_7_i0_fu_example_419510_419531));
  MUX_GATE #(.BITSIZE_in1(6), .BITSIZE_in2(6), .BITSIZE_out1(6)) MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0 (.out1(out_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0), .sel(selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0), .in1(out_reg_4_reg_4), .in2(out_addr_expr_FU_8_i0_fu_example_419510_419532));
  MUX_GATE #(.BITSIZE_in1(6), .BITSIZE_in2(6), .BITSIZE_out1(6)) MUX_9_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_1_0_0 (.out1(out_MUX_9_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_1_0_0), .sel(selector_MUX_9_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_1_0_0), .in1(out_reg_0_reg_0), .in2(out_addr_expr_FU_9_i0_fu_example_419510_419534));
  ARRAY_1D_STD_DISTRAM_NN_SDS #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_in2(6), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(32), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(6), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_419547.mem"), .n_elements(1), .data_size(32), .address_space_begin(MEM_var_419547_419510), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(32), .PRIVATE_MEMORY(1), .READ_ONLY_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(6), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_419547_0 (.out1({null_out_signal_array_419547_0_out1_1, out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_array_419547_0}), .Sout_Rdata_ram({null_out_signal_array_419547_0_Sout_Rdata_ram_1, null_out_signal_array_419547_0_Sout_Rdata_ram_0}), .Sout_DataRdy({null_out_signal_array_419547_0_Sout_DataRdy_1, null_out_signal_array_419547_0_Sout_DataRdy_0}), .proxy_out1({null_out_signal_array_419547_0_proxy_out1_1, null_out_signal_array_419547_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({32'b00000000000000000000000000000000, out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_0}), .in2({6'b000000, out_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0}), .in3({6'b000000, out_conv_out_const_2_7_6}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE}), .S_oe_ram({1'b0, 1'b0}), .S_we_ram({1'b0, 1'b0}), .S_addr_ram({6'b000000, 6'b000000}), .S_Wdata_ram({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .Sin_Rdata_ram({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .S_data_ram_size({6'b000000, 6'b000000}), .Sin_DataRdy({1'b0, 1'b0}), .proxy_in1({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .proxy_in2({6'b000000, 6'b000000}), .proxy_in3({6'b000000, 6'b000000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_DISTRAM_NN_SDS #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_in2(6), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(32), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(6), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_419550.mem"), .n_elements(1), .data_size(32), .address_space_begin(MEM_var_419550_419510), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(32), .PRIVATE_MEMORY(1), .READ_ONLY_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(6), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_419550_0 (.out1({null_out_signal_array_419550_0_out1_1, out_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_array_419550_0}), .Sout_Rdata_ram({null_out_signal_array_419550_0_Sout_Rdata_ram_1, null_out_signal_array_419550_0_Sout_Rdata_ram_0}), .Sout_DataRdy({null_out_signal_array_419550_0_Sout_DataRdy_1, null_out_signal_array_419550_0_Sout_DataRdy_0}), .proxy_out1({null_out_signal_array_419550_0_proxy_out1_1, null_out_signal_array_419550_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({32'b00000000000000000000000000000000, out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_1}), .in2({6'b000000, out_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0}), .in3({6'b000000, out_conv_out_const_2_7_6}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE}), .S_oe_ram({1'b0, 1'b0}), .S_we_ram({1'b0, 1'b0}), .S_addr_ram({6'b000000, 6'b000000}), .S_Wdata_ram({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .Sin_Rdata_ram({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .S_data_ram_size({6'b000000, 6'b000000}), .Sin_DataRdy({1'b0, 1'b0}), .proxy_in1({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .proxy_in2({6'b000000, 6'b000000}), .proxy_in3({6'b000000, 6'b000000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_DISTRAM_NN_SDS #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_in2(6), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(32), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(6), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_419556.mem"), .n_elements(1), .data_size(32), .address_space_begin(MEM_var_419556_419510), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(32), .PRIVATE_MEMORY(1), .READ_ONLY_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(6), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_419556_0 (.out1({null_out_signal_array_419556_0_out1_1, out_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_array_419556_0}), .Sout_Rdata_ram({null_out_signal_array_419556_0_Sout_Rdata_ram_1, null_out_signal_array_419556_0_Sout_Rdata_ram_0}), .Sout_DataRdy({null_out_signal_array_419556_0_Sout_DataRdy_1, null_out_signal_array_419556_0_Sout_DataRdy_0}), .proxy_out1({null_out_signal_array_419556_0_proxy_out1_1, null_out_signal_array_419556_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({32'b00000000000000000000000000000000, out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_2}), .in2({6'b000000, out_MUX_9_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_1_0_0}), .in3({6'b000000, out_conv_out_const_2_7_6}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_STORE}), .S_oe_ram({1'b0, 1'b0}), .S_we_ram({1'b0, 1'b0}), .S_addr_ram({6'b000000, 6'b000000}), .S_Wdata_ram({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .Sin_Rdata_ram({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .S_data_ram_size({6'b000000, 6'b000000}), .Sin_DataRdy({1'b0, 1'b0}), .proxy_in1({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .proxy_in2({6'b000000, 6'b000000}), .proxy_in3({6'b000000, 6'b000000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_DISTRAM_NN_SDS #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_in2(6), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(32), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(6), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_419559.mem"), .n_elements(1), .data_size(32), .address_space_begin(MEM_var_419559_419510), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(32), .PRIVATE_MEMORY(1), .READ_ONLY_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(6), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_419559_0 (.out1({null_out_signal_array_419559_0_out1_1, out_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_array_419559_0}), .Sout_Rdata_ram({null_out_signal_array_419559_0_Sout_Rdata_ram_1, null_out_signal_array_419559_0_Sout_Rdata_ram_0}), .Sout_DataRdy({null_out_signal_array_419559_0_Sout_DataRdy_1, null_out_signal_array_419559_0_Sout_DataRdy_0}), .proxy_out1({null_out_signal_array_419559_0_proxy_out1_1, null_out_signal_array_419559_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({32'b00000000000000000000000000000000, out_MUX_12_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_0_0_0}), .in2({6'b000000, out_reg_1_reg_1}), .in3({6'b000000, out_conv_out_const_2_7_6}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_STORE}), .S_oe_ram({1'b0, 1'b0}), .S_we_ram({1'b0, 1'b0}), .S_addr_ram({6'b000000, 6'b000000}), .S_Wdata_ram({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .Sin_Rdata_ram({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .S_data_ram_size({6'b000000, 6'b000000}), .Sin_DataRdy({1'b0, 1'b0}), .proxy_in1({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .proxy_in2({6'b000000, 6'b000000}), .proxy_in3({6'b000000, 6'b000000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_DISTRAM_NN_SDS #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_in2(6), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(32), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(6), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_419562.mem"), .n_elements(1), .data_size(32), .address_space_begin(MEM_var_419562_419510), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(32), .PRIVATE_MEMORY(1), .READ_ONLY_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(6), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_419562_0 (.out1({null_out_signal_array_419562_0_out1_1, out_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_array_419562_0}), .Sout_Rdata_ram({null_out_signal_array_419562_0_Sout_Rdata_ram_1, null_out_signal_array_419562_0_Sout_Rdata_ram_0}), .Sout_DataRdy({null_out_signal_array_419562_0_Sout_DataRdy_1, null_out_signal_array_419562_0_Sout_DataRdy_0}), .proxy_out1({null_out_signal_array_419562_0_proxy_out1_1, null_out_signal_array_419562_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({32'b00000000000000000000000000000000, out_MUX_16_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_0_0_0}), .in2({6'b000000, out_reg_2_reg_2}), .in3({6'b000000, out_conv_out_const_2_7_6}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_STORE}), .S_oe_ram({1'b0, 1'b0}), .S_we_ram({1'b0, 1'b0}), .S_addr_ram({6'b000000, 6'b000000}), .S_Wdata_ram({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .Sin_Rdata_ram({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .S_data_ram_size({6'b000000, 6'b000000}), .Sin_DataRdy({1'b0, 1'b0}), .proxy_in1({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .proxy_in2({6'b000000, 6'b000000}), .proxy_in3({6'b000000, 6'b000000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(32), .value(32'b00000000000000000000000000000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(7), .value(7'b0100000)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_419547_419510)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_419550_419510)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_419556_419510)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_419559_419510)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_419562_419510)) const_8 (.out1(out_const_8));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(6)) conv_out_const_2_7_6 (.out1(out_conv_out_const_2_7_6), .in1(out_const_2));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_4_6_32 (.out1(out_conv_out_const_4_6_32), .in1(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_5_6_32 (.out1(out_conv_out_const_5_6_32), .in1(out_const_5));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_6_6_32 (.out1(out_conv_out_const_6_6_32), .in1(out_const_6));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_7_6_32 (.out1(out_conv_out_const_7_6_32), .in1(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_8_6_32 (.out1(out_conv_out_const_8_6_32), .in1(out_const_8));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(6)) fu_example_419510_419531 (.out1(out_addr_expr_FU_7_i0_fu_example_419510_419531), .in1(out_conv_out_const_4_6_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(6)) fu_example_419510_419532 (.out1(out_addr_expr_FU_8_i0_fu_example_419510_419532), .in1(out_conv_out_const_5_6_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(6)) fu_example_419510_419534 (.out1(out_addr_expr_FU_9_i0_fu_example_419510_419534), .in1(out_conv_out_const_6_6_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(6)) fu_example_419510_419535 (.out1(out_addr_expr_FU_10_i0_fu_example_419510_419535), .in1(out_conv_out_const_7_6_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(6)) fu_example_419510_419536 (.out1(out_addr_expr_FU_11_i0_fu_example_419510_419536), .in1(out_conv_out_const_8_6_32));
  read_cond_FU #(.BITSIZE_in1(1)) fu_example_419510_419543 (.out1(out_read_cond_FU_13_i0_fu_example_419510_419543), .in1(out_ui_eq_expr_FU_32_0_32_21_i0_fu_example_419510_419649));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) fu_example_419510_419591 (.out1(out_ui_plus_expr_FU_32_32_32_24_i0_fu_example_419510_419591), .in1(out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_array_419547_0), .in2(out_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_array_419550_0));
  read_cond_FU #(.BITSIZE_in1(1)) fu_example_419510_419609 (.out1(out_read_cond_FU_16_i0_fu_example_419510_419609), .in1(out_ui_eq_expr_FU_32_0_32_22_i0_fu_example_419510_419657));
  ui_eq_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_example_419510_419649 (.out1(out_ui_eq_expr_FU_32_0_32_21_i0_fu_example_419510_419649), .in1(in_port_P2), .in2(out_const_3));
  ui_eq_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_example_419510_419657 (.out1(out_ui_eq_expr_FU_32_0_32_22_i0_fu_example_419510_419657), .in1(out_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_array_419556_0), .in2(out_const_0));
  ui_lshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32), .PRECISION(32)) fu_example_419510_419666 (.out1(out_ui_lshift_expr_FU_32_0_32_23_i0_fu_example_419510_419666), .in1(out_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_array_419559_0), .in2(out_const_3));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(31), .OFFSET_PARAMETER(1)) fu_example_419510_419669 (.out1(out_ui_bit_ior_concat_expr_FU_20_i0_fu_example_419510_419669), .in1(out_ui_lshift_expr_FU_32_0_32_23_i2_fu_example_419510_419702), .in2(out_ui_bit_and_expr_FU_1_0_1_19_i0_fu_example_419510_419705), .in3(out_const_3));
  ui_lshift_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(1), .BITSIZE_out1(32), .PRECISION(32)) fu_example_419510_419672 (.out1(out_ui_lshift_expr_FU_32_0_32_23_i1_fu_example_419510_419672), .in1(out_ui_bit_ior_concat_expr_FU_20_i0_fu_example_419510_419669), .in2(out_const_3));
  ui_rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(31), .PRECISION(32)) fu_example_419510_419692 (.out1(out_ui_rshift_expr_FU_32_0_32_25_i0_fu_example_419510_419692), .in1(out_ui_lshift_expr_FU_32_0_32_23_i0_fu_example_419510_419666), .in2(out_const_3));
  ui_rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(31), .PRECISION(32)) fu_example_419510_419696 (.out1(out_ui_rshift_expr_FU_32_0_32_25_i1_fu_example_419510_419696), .in1(out_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_array_419559_0), .in2(out_const_3));
  ui_plus_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(31), .BITSIZE_out1(30)) fu_example_419510_419698 (.out1(out_ui_plus_expr_FU_32_32_32_24_i1_fu_example_419510_419698), .in1(out_ui_rshift_expr_FU_32_0_32_25_i0_fu_example_419510_419692), .in2(out_ui_rshift_expr_FU_32_0_32_25_i1_fu_example_419510_419696));
  ui_lshift_expr_FU #(.BITSIZE_in1(30), .BITSIZE_in2(1), .BITSIZE_out1(31), .PRECISION(32)) fu_example_419510_419702 (.out1(out_ui_lshift_expr_FU_32_0_32_23_i2_fu_example_419510_419702), .in1(out_ui_plus_expr_FU_32_32_32_24_i1_fu_example_419510_419698), .in2(out_const_3));
  ui_bit_and_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_example_419510_419705 (.out1(out_ui_bit_and_expr_FU_1_0_1_19_i0_fu_example_419510_419705), .in1(out_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_array_419559_0), .in2(out_const_3));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_9_i0_fu_example_419510_419534), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_10_i0_fu_example_419510_419535), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_11_i0_fu_example_419510_419536), .wenable(wrenable_reg_2));
  register_STD #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_7_i0_fu_example_419510_419531), .wenable(wrenable_reg_3));
  register_STD #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_8_i0_fu_example_419510_419532), .wenable(wrenable_reg_4));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_32_32_32_24_i0_fu_example_419510_419591), .wenable(wrenable_reg_5));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_ui_lshift_expr_FU_32_0_32_23_i1_fu_example_419510_419672), .wenable(wrenable_reg_6));
  // io-signal post fix
  assign return_port = out_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_array_419562_0;
  assign OUT_CONDITION_example_419510_419543 = out_read_cond_FU_13_i0_fu_example_419510_419543;
  assign OUT_CONDITION_example_419510_419609 = out_read_cond_FU_16_i0_fu_example_419510_419609;

endmodule

// FSM based controller description for example
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_example(done_port, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_STORE, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_STORE, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_STORE, selector_MUX_12_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_0_0_0, selector_MUX_16_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_0_0_0, selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0, selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0, selector_MUX_9_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_1_0_0, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, OUT_CONDITION_example_419510_419543, OUT_CONDITION_example_419510_419609, clock, reset, start_port);
  // IN
  input OUT_CONDITION_example_419510_419543;
  input OUT_CONDITION_example_419510_419609;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_LOAD;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_STORE;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_LOAD;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_STORE;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_LOAD;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_STORE;
  output selector_MUX_12_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_0_0_0;
  output selector_MUX_16_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_0_0_0;
  output selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0;
  output selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0;
  output selector_MUX_9_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_1_0_0;
  output wrenable_reg_0;
  output wrenable_reg_1;
  output wrenable_reg_2;
  output wrenable_reg_3;
  output wrenable_reg_4;
  output wrenable_reg_5;
  output wrenable_reg_6;
  parameter [7:0] S_0 = 8'b00000001,
    S_3 = 8'b00001000,
    S_1 = 8'b00000010,
    S_2 = 8'b00000100,
    S_4 = 8'b00010000,
    S_5 = 8'b00100000,
    S_6 = 8'b01000000,
    S_7 = 8'b10000000;
  reg [7:0] _present_state, _next_state;
  reg done_port;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_STORE;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_STORE;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_STORE;
  reg selector_MUX_12_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_0_0_0;
  reg selector_MUX_16_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_0_0_0;
  reg selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0;
  reg selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0;
  reg selector_MUX_9_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_1_0_0;
  reg wrenable_reg_0;
  reg wrenable_reg_1;
  reg wrenable_reg_2;
  reg wrenable_reg_3;
  reg wrenable_reg_4;
  reg wrenable_reg_5;
  reg wrenable_reg_6;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_STORE = 1'b0;
    selector_MUX_12_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_0_0_0 = 1'b0;
    selector_MUX_16_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_0_0_0 = 1'b0;
    selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0 = 1'b0;
    selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0 = 1'b0;
    selector_MUX_9_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_1_0_0 = 1'b0;
    wrenable_reg_0 = 1'b0;
    wrenable_reg_1 = 1'b0;
    wrenable_reg_2 = 1'b0;
    wrenable_reg_3 = 1'b0;
    wrenable_reg_4 = 1'b0;
    wrenable_reg_5 = 1'b0;
    wrenable_reg_6 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_STORE = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          if (OUT_CONDITION_example_419510_419543 == 1'b1)
            begin
              _next_state = S_1;
            end
          else
            begin
              _next_state = S_3;
              wrenable_reg_3 = 1'b0;
              wrenable_reg_4 = 1'b0;
            end
        end
        else
        begin
          selector_MUX_12_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_0_0_0 = 1'bX;
          selector_MUX_16_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_0_0_0 = 1'bX;
          selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0 = 1'bX;
          selector_MUX_9_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_1_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_4 = 1'bX;
          wrenable_reg_5 = 1'bX;
          wrenable_reg_6 = 1'bX;
          _next_state = S_0;
        end
      S_3 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_STORE = 1'b1;
          selector_MUX_12_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_0_0_0 = 1'b1;
          _next_state = S_4;
        end
      S_1 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD = 1'b1;
          selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0 = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0 = 1'b1;
          wrenable_reg_5 = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_STORE = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_STORE = 1'b1;
          selector_MUX_16_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_0_0_0 = 1'b1;
          selector_MUX_9_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_1_0_0 = 1'b1;
          if (OUT_CONDITION_example_419510_419609 == 1'b1)
            begin
              _next_state = S_5;
            end
          else
            begin
              _next_state = S_7;
              done_port = 1'b1;
            end
        end
      S_5 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_LOAD = 1'b1;
          wrenable_reg_6 = 1'b1;
          _next_state = S_6;
        end
      S_6 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_STORE = 1'b1;
          _next_state = S_7;
          done_port = 1'b1;
        end
      S_7 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_LOAD = 1'b1;
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_12_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_0_0_0 = 1'bX;
          selector_MUX_16_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_0_0_0 = 1'bX;
          selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0 = 1'bX;
          selector_MUX_9_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_1_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_4 = 1'bX;
          wrenable_reg_5 = 1'bX;
          wrenable_reg_6 = 1'bX;
        end
    endcase
  end
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Marco Lattuada <marco.lattuada@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module flipflop_AR(clock, reset, in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input clock;
  input reset;
  input in1;
  // OUT
  output out1;
  
  reg reg_out1 =0;
  assign out1 = reg_out1;
  always @(posedge clock )
    if (reset == 1'b0)
      reg_out1 <= {BITSIZE_out1{1'b0}};
    else
      reg_out1 <= in1;
endmodule

// Top component for example
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module _example(clock, reset, start_port, done_port, P0, P1, P2, P3, return_port);
  parameter MEM_var_419547_419510=32, MEM_var_419550_419510=32, MEM_var_419556_419510=32, MEM_var_419559_419510=32, MEM_var_419562_419510=32;
  // IN
  input clock;
  input reset;
  input start_port;
  input [31:0] P0;
  input [31:0] P1;
  input [31:0] P2;
  input [31:0] P3;
  // OUT
  output done_port;
  output [31:0] return_port;
  // Component and signal declarations
  wire OUT_CONDITION_example_419510_419543;
  wire OUT_CONDITION_example_419510_419609;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_STORE;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_STORE;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_STORE;
  wire selector_MUX_12_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_0_0_0;
  wire selector_MUX_16_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_0_0_0;
  wire selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0;
  wire selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0;
  wire selector_MUX_9_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_1_0_0;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_2;
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  
  controller_example Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_LOAD), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_STORE), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_LOAD), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_STORE), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_LOAD), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_STORE), .selector_MUX_12_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_0_0_0(selector_MUX_12_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_0_0_0), .selector_MUX_16_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_0_0_0(selector_MUX_16_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_0_0_0), .selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0), .selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0(selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0), .selector_MUX_9_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_1_0_0(selector_MUX_9_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_1_0_0), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .OUT_CONDITION_example_419510_419543(OUT_CONDITION_example_419510_419543), .OUT_CONDITION_example_419510_419609(OUT_CONDITION_example_419510_419609), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_example #(.MEM_var_419547_419510(MEM_var_419547_419510), .MEM_var_419550_419510(MEM_var_419550_419510), .MEM_var_419556_419510(MEM_var_419556_419510), .MEM_var_419559_419510(MEM_var_419559_419510), .MEM_var_419562_419510(MEM_var_419562_419510)) Datapath_i (.return_port(return_port), .OUT_CONDITION_example_419510_419543(OUT_CONDITION_example_419510_419543), .OUT_CONDITION_example_419510_419609(OUT_CONDITION_example_419510_419609), .clock(clock), .reset(reset), .in_port_P0(P0), .in_port_P1(P1), .in_port_P2(P2), .in_port_P3(P3), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_LOAD), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_STORE), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_LOAD), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_STORE), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_LOAD), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_STORE), .selector_MUX_12_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_0_0_0(selector_MUX_12_ARRAY_1D_STD_DISTRAM_NN_SDS_3_i0_0_0_0), .selector_MUX_16_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_0_0_0(selector_MUX_16_ARRAY_1D_STD_DISTRAM_NN_SDS_4_i0_0_0_0), .selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0), .selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0(selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0), .selector_MUX_9_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_1_0_0(selector_MUX_9_ARRAY_1D_STD_DISTRAM_NN_SDS_2_i0_1_0_0), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

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
module example(clock, reset, start_port, P0, P1, P2, P3, done_port, return_port);
  parameter MEM_var_419547_419510=32, MEM_var_419550_419510=32, MEM_var_419556_419510=32, MEM_var_419559_419510=32, MEM_var_419562_419510=32;
  // IN
  input clock;
  input reset;
  input start_port;
  input [31:0] P0;
  input [31:0] P1;
  input [31:0] P2;
  input [31:0] P3;
  // OUT
  output done_port;
  output [31:0] return_port;
  // Component and signal declarations
  wire [31:0] out_return_port_ui_view_convert_expr_FU;
  
  _example #(.MEM_var_419547_419510(MEM_var_419547_419510), .MEM_var_419550_419510(MEM_var_419550_419510), .MEM_var_419556_419510(MEM_var_419556_419510), .MEM_var_419559_419510(MEM_var_419559_419510), .MEM_var_419562_419510(MEM_var_419562_419510)) _example_i0 (.done_port(done_port), .return_port(out_return_port_ui_view_convert_expr_FU), .clock(clock), .reset(reset), .start_port(start_port), .P0(P0), .P1(P1), .P2(P2), .P3(P3));
  ui_view_convert_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) return_port_ui_view_convert_expr_FU (.out1(return_port), .in1(out_return_port_ui_view_convert_expr_FU));

endmodule


