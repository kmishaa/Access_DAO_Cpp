
cls

@Del *.exe 

rem call "C:\Program Files\Microsoft Visual Studio 11.0\VC\vcvarsall.bat" x86
rem call "C:\Program Files\Microsoft Visual Studio 11.0\VC\\bin\vcvars32.bat"
rem call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\bin\vcvars32.bat"
rem call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars32.bat"
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars32.bat"
rem call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat"
rem call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"

Cl.exe /c /Zi /nologo /clr /W3 /WX- /O2 /Oi /Oy- /D WIN32 /D NDEBUG /D _CONSOLE /D _UNICODE /D UNICODE /Gm- /GS /Gy /fp:precise /Zc:wchar_t /Zc:forScope /Fo"RELEASE\\" /Fd"RELEASE\vc100.pdb" /Gd /TP /analyze- %~dp0cpp\LR1.5_Krasovitsky.cpp
Link.exe /OUT:LR1.5_Krasovitsky.exe /NOLOGO kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib CPP\oldnames.lib /PDB:"RELEASE\v100.pdb" /SUBSYSTEM:CONSOLE /MACHINE:X86 RELEASE\LR1.5_Krasovitsky.obj

del %~dp0RELEASE\*.pdb
del %~dp0RELEASE\*.obj

pause