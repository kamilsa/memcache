INCLUDE_PATH = 
SHELL = /bin/sh
CC = "C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/gcc/windows/mingw/bin/gcc"
CPP = "C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/gcc/windows/mingw/bin/gcc"
CFLAGS = -O0 -pipe -imacros eif_config.mingw.h -D_WIN32_WINNT=0x0500 -DWINVER=0x0500 -D_UNICODE -DUNICODE   -DEIF_IEEE_BEHAVIOR -DWORKBENCH -I"C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/studio/spec/windows/include" -I. $(INCLUDE_PATH)
CPPFLAGS = -O0 -pipe -imacros eif_config.mingw.h -D_WIN32_WINNT=0x0500 -DWINVER=0x0500 -D_UNICODE -DUNICODE   -DWORKBENCH -I"C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/studio/spec/windows/include" -I. $(INCLUDE_PATH)
LDFLAGS = 
CCLDFLAGS =   -mconsole
LDSHAREDFLAGS =  
EIFLIB = "C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/studio/spec/windows/lib/mingw/wkbench.a"
EIFTEMPLATES = C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/studio/config/windows/templates
LIBS = 
MAKE = "C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/gcc/windows/msys/1.0/bin/make.exe"
AR = "C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/gcc/windows/mingw/bin/ar"
LD = "C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/gcc/windows/mingw/bin/ld"
MKDEP =   --
MV = "C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/gcc/windows/msys/1.0/bin/cp"
CP = "C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/gcc/windows/msys/1.0/bin/cp"
RANLIB = "C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/gcc/windows/mingw/bin/ranlib.exe"
RM = "C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/gcc/windows/msys/1.0/bin/rm" -f
FILE_EXIST = 
RMDIR = "C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/gcc/windows/msys/1.0/bin/rd"
X2C = "C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/studio/spec/windows/bin/x2c.exe"
SHAREDLINK = "C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/gcc/windows/mingw/bin/dllwrap"
SHAREDLIBS = -luser32 -lws2_32 -ladvapi32 -lgdi32 -lshell32 -lmsimg32 -lcomdlg32 -luuid -lole32 -loleaut32 -lcomctl32 -lmpr -lshlwapi -lwinspool -lstdc++ 
SHARED_SUFFIX = .dll
COMMAND_MAKEFILE = 
START_TEST = if [ ! -f finished ] ; then 
END_TEST = ; fi 
CREATE_TEST = "C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/gcc/windows/msys/1.0/bin/touch" finished
PATH := C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/gcc/windows/mingw/libexec/gcc/mingw32/3.4.2;C:\Program Files\Git\git-cheetah\..\bin;C:\Program Files\Parallels\Parallels Tools\Applications;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\Program Files\Git\cmd 
SYSTEM_IN_DYNAMIC_LIB = memcache.dll 

.SUFFIXES:.cpp .o 

.c.o:
	$(CC) $(CFLAGS) -c $<

.cpp.o:
	$(CPP) $(CPPFLAGS) -c $<

OBJECTS = big_file_C1_c.o 

OLDOBJECTS =  ap860.o ap860d.o 

all::  Cobj1.o

Cobj1.o: $(OBJECTS) Makefile
	$(RM) $@
	$(LD) -r -o $@ $(OBJECTS)
	$(CREATE_TEST)
	$(RM) $(OBJECTS)


clean: local_clean
clobber: local_clobber

local_clean::
	$(RM) core finished *.o

local_clobber:: local_clean
	$(RM) Makefile

