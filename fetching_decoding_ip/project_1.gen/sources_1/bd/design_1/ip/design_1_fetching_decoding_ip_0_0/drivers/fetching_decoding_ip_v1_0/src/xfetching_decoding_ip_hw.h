// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00000 : Control signals
//           bit 0  - ap_start (Read/Write/COH)
//           bit 1  - ap_done (Read/COR)
//           bit 2  - ap_idle (Read)
//           bit 3  - ap_ready (Read/COR)
//           bit 7  - auto_restart (Read/Write)
//           bit 9  - interrupt (Read)
//           others - reserved
// 0x00004 : Global Interrupt Enable Register
//           bit 0  - Global Interrupt Enable (Read/Write)
//           others - reserved
// 0x00008 : IP Interrupt Enable Register (Read/Write)
//           bit 0 - enable ap_done interrupt (Read/Write)
//           bit 1 - enable ap_ready interrupt (Read/Write)
//           others - reserved
// 0x0000c : IP Interrupt Status Register (Read/TOW)
//           bit 0 - ap_done (Read/TOW)
//           bit 1 - ap_ready (Read/TOW)
//           others - reserved
// 0x00010 : Data signal of start_pc
//           bit 31~0 - start_pc[31:0] (Read/Write)
// 0x00014 : reserved
// 0x00018 : Data signal of nb_instruction
//           bit 31~0 - nb_instruction[31:0] (Read)
// 0x0001c : Control signal of nb_instruction
//           bit 0  - nb_instruction_ap_vld (Read/COR)
//           others - reserved
// 0x20000 ~
// 0x3ffff : Memory 'code_ram' (32768 * 32b)
//           Word n : bit [31:0] - code_ram[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XFETCHING_DECODING_IP_CONTROL_ADDR_AP_CTRL             0x00000
#define XFETCHING_DECODING_IP_CONTROL_ADDR_GIE                 0x00004
#define XFETCHING_DECODING_IP_CONTROL_ADDR_IER                 0x00008
#define XFETCHING_DECODING_IP_CONTROL_ADDR_ISR                 0x0000c
#define XFETCHING_DECODING_IP_CONTROL_ADDR_START_PC_DATA       0x00010
#define XFETCHING_DECODING_IP_CONTROL_BITS_START_PC_DATA       32
#define XFETCHING_DECODING_IP_CONTROL_ADDR_NB_INSTRUCTION_DATA 0x00018
#define XFETCHING_DECODING_IP_CONTROL_BITS_NB_INSTRUCTION_DATA 32
#define XFETCHING_DECODING_IP_CONTROL_ADDR_NB_INSTRUCTION_CTRL 0x0001c
#define XFETCHING_DECODING_IP_CONTROL_ADDR_CODE_RAM_BASE       0x20000
#define XFETCHING_DECODING_IP_CONTROL_ADDR_CODE_RAM_HIGH       0x3ffff
#define XFETCHING_DECODING_IP_CONTROL_WIDTH_CODE_RAM           32
#define XFETCHING_DECODING_IP_CONTROL_DEPTH_CODE_RAM           32768

