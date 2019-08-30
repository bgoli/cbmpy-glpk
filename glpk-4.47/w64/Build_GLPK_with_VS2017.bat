rem Build GLPK with Microsoft Visual Studio Express 2010

rem NOTE: Make sure that HOME variable specifies correct path
rem set HOME="C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC"

call "c:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\VC\Auxiliary\Build\vcvarsall.bat" x64
copy config_VC config.h
nmake.exe /f Makefile_VC
nmake.exe /f Makefile_VC check

pause
