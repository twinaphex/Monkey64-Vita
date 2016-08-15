TARGET = Main_Psp
PSPPORT = Video_Psp.o Rom_Psp.o Helper_Psp.o Menu_Psp.o $(CORE) $(CPU) $(HLEUC)
CPU = Cpu/Memory.o Cpu/Registers.o Cpu/Timers.o Cpu/Exceptions.o Cpu/Dma.o Cpu/Video.o Cpu/Pif.o Cpu/Textures.o
CORE = Cpu/Instructions/Core.o Cpu/Instructions/Cop0.o Cpu/Instructions/Cop1.o Cpu/Instructions/Rsp.o Cpu/Instructions/RdpLLE.o
HLEUC = Cpu/Instructions/RspFast3D.o Cpu/Instructions/RspF3DEX.o Cpu/Instructions/RspF3DEX2.o
OBJS = main.o $(PSPPORT)

INCDIR =
CFLAGS = -O1 -G0 -Wall
CXXFLAGS = $(CFLAGS) -fno-exceptions -fno-rtti
ASFLAGS = $(CFLAGS)

LIBDIR =
LDFLAGS = 
LIBS= -lpspgum_vfpu -lpspvfpu -lpspgu -lm -lpsppower

EXTRA_TARGETS = EBOOT.PBP
PSP_EBOOT_TITLE = Monkey 64

PSPSDK=$(shell psp-config --pspsdk-path)
include $(PSPSDK)/lib/build.mak
