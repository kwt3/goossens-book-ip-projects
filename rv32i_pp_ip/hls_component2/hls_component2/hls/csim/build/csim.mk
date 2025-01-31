# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1.2 (64-bit)
# Tool Version Limit: 2024.05
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

__USE_CLANG__ = 1

__USE_VCXX_CLANG__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../../testbench_rv32i_pp_ip.cpp ../../../../../wb.cpp ../../../../../type.cpp ../../../../../rv32i_pp_ip.cpp ../../../../../print.cpp ../../../../../mem.cpp ../../../../../immediate.cpp ../../../../../fetch_decode.cpp ../../../../../fetch.cpp ../../../../../execute.cpp ../../../../../emulate.cpp ../../../../../disassemble.cpp ../../../../../decode.cpp ../../../../../compute.cpp

override TARGET := csim.exe

AUTOPILOT_ROOT := C:/Xilinx/Vitis_HLS/2024.1
AUTOPILOT_MACH := win64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := C:/Xilinx/Vitis_HLS/2024.1/tps/win64/msys64/mingw64/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${XILINX_VCXX}/libexec
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__HLS_COSIM__

IFLAG += -D__HLS_CSIM__

IFLAG += -D__VITIS_HLS__

IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E1__
LFLAG += -Wl,--stack,0x40000000
IFLAG += -g
IFLAG += -DNT
LFLAG += -Wl,--enable-auto-import 
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += -Werror=return-type
CCFLAG += -Wno-abi
CCFLAG += -fdebug-default-version=4
CCFLAG += --sysroot=C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt
CCFLAG += -Werror=uninitialized
CCFLAG += -Wno-c++11-narrowing
CCFLAG += -Wno-error=sometimes-uninitialized
LFLAG += --sysroot=C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/testbench_rv32i_pp_ip.o: ../../../../../testbench_rv32i_pp_ip.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../testbench_rv32i_pp_ip.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/testbench_rv32i_pp_ip.d

$(ObjDir)/wb.o: ../../../../../wb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../wb.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/wb.d

$(ObjDir)/type.o: ../../../../../type.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../type.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/type.d

$(ObjDir)/rv32i_pp_ip.o: ../../../../../rv32i_pp_ip.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../rv32i_pp_ip.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/rv32i_pp_ip.d

$(ObjDir)/print.o: ../../../../../print.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../print.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/print.d

$(ObjDir)/mem.o: ../../../../../mem.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../mem.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/mem.d

$(ObjDir)/immediate.o: ../../../../../immediate.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../immediate.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/immediate.d

$(ObjDir)/fetch_decode.o: ../../../../../fetch_decode.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../fetch_decode.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/fetch_decode.d

$(ObjDir)/fetch.o: ../../../../../fetch.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../fetch.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/fetch.d

$(ObjDir)/execute.o: ../../../../../execute.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../execute.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/execute.d

$(ObjDir)/emulate.o: ../../../../../emulate.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../emulate.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/emulate.d

$(ObjDir)/disassemble.o: ../../../../../disassemble.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../disassemble.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/disassemble.d

$(ObjDir)/decode.o: ../../../../../decode.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../decode.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/decode.d

$(ObjDir)/compute.o: ../../../../../compute.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../compute.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/compute.d
