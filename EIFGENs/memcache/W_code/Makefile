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

SUBDIRS = C1 E1

EXTERNALS = 

all:: memcache.exe
	echo done > completed.eif

C1/Cobj1.o: Makefile E1/estructure.h
	cd C1 && $(START_TEST) $(MAKE) Cobj1.o $(END_TEST) && cd ..

E1/emain.o:  Makefile E1/Makefile
	$(CP) "$(EIFTEMPLATES)/emain.template" "E1/emain.c"
	cd E1 && $(START_TEST) $(MAKE) emain.o  $(END_TEST) && cd ..

E1/eoption.o : Makefile E1/Makefile E1/estructure.h
	cd E1 && $(START_TEST) $(MAKE) eoption.o  $(END_TEST) && cd ..

E1/epattern.o : Makefile E1/Makefile E1/estructure.h
	cd E1 && $(START_TEST) $(MAKE) epattern.o  $(END_TEST) && cd ..

E1/efrozen.o : Makefile E1/Makefile E1/estructure.h
	cd E1 && $(START_TEST) $(MAKE) efrozen.o  $(END_TEST) && cd ..

E1/ecall.o : Makefile E1/Makefile E1/estructure.h
	cd E1 && $(START_TEST) $(MAKE) ecall.o  $(END_TEST) && cd ..

E1/eplug.o : Makefile E1/Makefile E1/estructure.h
	cd E1 && $(START_TEST) $(MAKE) eplug.o  $(END_TEST) && cd ..

E1/eskelet.o : Makefile E1/Makefile E1/estructure.h
	cd E1 && $(START_TEST) $(MAKE) eskelet.o  $(END_TEST) && cd ..

E1/enames.o : Makefile E1/Makefile E1/estructure.h
	cd E1 && $(START_TEST) $(MAKE) enames.o  $(END_TEST) && cd ..

E1/evisib.o : Makefile E1/Makefile E1/estructure.h
	cd E1 && $(START_TEST) $(MAKE) evisib.o  $(END_TEST) && cd ..

E1/ececil.o : Makefile E1/Makefile E1/estructure.h
	cd E1 && $(START_TEST) $(MAKE) ececil.o  $(END_TEST) && cd ..

E1/einit.o : Makefile E1/Makefile E1/estructure.h
	cd E1 && $(START_TEST) $(MAKE) einit.o  $(END_TEST) && cd ..

E1/eparents.o : Makefile E1/Makefile E1/estructure.h
	cd E1 && $(START_TEST) $(MAKE) eparents.o  $(END_TEST) && cd ..

OBJECTS = E1/eparents.o  E1/einit.o  E1/ececil.o  E1/evisib.o  E1/enames.o  E1/eskelet.o  E1/eplug.o  E1/ecall.o  E1/efrozen.o  E1/epattern.o  E1/eoption.o  C1/Cobj1.o 

C_OBJECTS = C1/Cobj1.o 

EOBJECTS = E1/eparents.o  E1/einit.o  E1/ececil.o  E1/evisib.o  E1/enames.o  E1/eskelet.o  E1/eplug.o  E1/ecall.o  E1/efrozen.o  E1/epattern.o  E1/eoption.o  

PRECOMP_OBJECTS= "c:\documents and settings\administrator\my documents\eiffel user files\15.01\precomp\spec\windows\EIFGENs\base-safe\W_code/mingw/precomp.lib"


memcache.exe: E1/emain.o $(OBJECTS) memcache.res 
	$(COMMAND_MAKEFILE)
	$(RM) $@
	$(CC) $(LDFLAGS) $(CCLDFLAGS) -o memcache.exe E1/emain.o $(PRECOMP_OBJECTS) memcache.res $(OBJECTS)  $(EIFLIB) -luser32 -lws2_32 -ladvapi32 -lgdi32 -lshell32 -lmsimg32 -lcomdlg32 -luuid -lole32 -loleaut32 -lcomctl32 -lmpr -lshlwapi -lwinspool -lstdc++ $(ISE_SHAREDLIBS)

../../../memcache.rc:
	if [ ! -f ../../../memcache.rc ] ; then $(MV) "C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/studio/config/windows/mingw/eiffel.rc" ../../../memcache.rc ; fi 

memcache.res: ../../../memcache.rc Makefile
	"C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/gcc/windows/mingw/bin/windres" --preprocessor='"C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/gcc/windows/mingw/bin/cpp.exe"' -I../../.. ../../../memcache.rc -O coff -o memcache.res

RCECIL = wmalloc.o wgarcol.o wlocal.o wexcept.o wstore.o wretrieve.o whash.o \
	wtraverse.o whashin.o wtools.o winternal.o wplug.o wcopy.o wequal.o \
	wlmalloc.o wout.o wtimer.o wurgent.o wsig.o whector.o wcecil.o \
	wfile.o wdir.o wmisc.o werror.o wumain.o wmemory.o wargv.o wboolstr.o \
	wsearch.o wmain.o debug.o interp.o woption.o update.o wbench.o \
	wrun_idr.o wcompress.o wconsole.o wpath_name.o wobject_id.o \
	weif_threads.o wgen_conf.o weif_type_id.o wrout_obj.o weif_project.o \
	idrs.o wposix_threads.o network.o ipc.o wmemory_analyzer.o woffset.o 


#STATIC_CECIL PART
STATIC_CECIL = libmemcache.o
cecil: $(STATIC_CECIL)
$(STATIC_CECIL): $(OBJECTS)
	$(AR) x $(EIFLIB)
	$(AR) rc $(STATIC_CECIL) $(OBJECTS) $(EXTERNALS) $(PRECOMP_OBJECTS) $(RCECIL)
	$(RANLIB) $(STATIC_CECIL)
	$(RM) $(RCECIL)



#SHARED_CECIL PART
SHARED_CECIL = libmemcache$(SHARED_SUFFIX)
dynamic_cecil: $(SHARED_CECIL) 
DEF_FILE= c_memcache.def 
c_memcache.def: 
	$(RM) $@
	@echo LIBRARY libmemcache.dll > $@
	@type "C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/studio/config/windows/templates/cecil.def" >> $@

SHARED_CECIL_OBJECT = $(OBJECTS) \
		E1/emain.o
SHAREDFLAGS = $(LDSHAREDFLAGS) \
\
	--dlltool-name "C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/gcc/windows/mingw/bin/dlltool" \
	--as "C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/gcc/windows/mingw/bin/as" \
	--def $(DEF_FILE) --output-lib c_dll_memcache.lib -o $(SHARED_CECIL)

$(SHARED_CECIL): $(SHARED_CECIL_OBJECT)  $(DEF_FILE)
	if [ -f $(SHARED_CECIL) ] ; then $(RM) $(SHARED_CECIL) ; fi
	$(SHAREDLINK) $(SHAREDFLAGS) $(SHARED_CECIL_OBJECT) $(PRECOMP_OBJECTS) $(EXTERNALS) $(EIFLIB) $(SHAREDLIBS) 

#SYSTEM_IN_DYNAMIC_LIB PART

DEF_FILE= memcache.def
dynlib: $(SYSTEM_IN_DYNAMIC_LIB) 
E1/egc_dynlib.o: Makefile E1/Makefile
	$(CP) "$(EIFTEMPLATES)/egc_dynlib.template" E1/egc_dynlib.c
	cd E1 && $(MAKE) egc_dynlib.o && cd ..
E1/edynlib.o: Makefile E1/Makefile E1/edynlib.c 
	cd E1 && $(MAKE) edynlib.o && cd ..

SYSTEM_IN_DYNAMIC_LIB_OBJ = $(OBJECTS) \
		E1/edynlib.o E1/egc_dynlib.o 
DYNLIBSHAREDFLAGS = $(LDSHAREDFLAGS) \
\
	--dlltool-name "C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/gcc/windows/mingw/bin/dlltool" \
	--as "C:\Program Files\Eiffel Software\EiffelStudio 15.01 Enterprise/gcc/windows/mingw/bin/as" \
	--def $(DEF_FILE) --output-lib dll_memcache.lib -o $(SYSTEM_IN_DYNAMIC_LIB)

$(SYSTEM_IN_DYNAMIC_LIB): $(SYSTEM_IN_DYNAMIC_LIB_OBJ)  $(DEF_FILE)
	if [ -f $(SYSTEM_IN_DYNAMIC_LIB) ] ; then $(RM) $(SYSTEM_IN_DYNAMIC_LIB) ; fi
	$(SHAREDLINK) $(DYNLIBSHAREDFLAGS) $(SYSTEM_IN_DYNAMIC_LIB_OBJ) $(PRECOMP_OBJECTS) $(EXTERNALS) $(EIFLIB) $(SHAREDLIBS) 



clean: sub_clean local_clean
clobber: sub_clobber local_clobber

local_clean::
	$(RM) core finished *.o *.so *.a

local_clobber:: local_clean
	$(RM) Makefile config.sh finish_freezing

sub_clean::
	for i in $(SUBDIRS); \
	do \
		if [ -r $$i/Makefile ]; then \
			(cd $$i ; $(MAKE) clean); \
		fi; \
	done

sub_clobber::
	for i in $(SUBDIRS); \
	do \
		if [ -r $$i/Makefile ]; then \
			(cd $$i ; $(MAKE) clobber); \
		fi; \
	done

