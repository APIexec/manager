::cd devops
@ECHO OFF &SETLOCAL

setlocal enableextensions enabledelayedexpansion
set devops_path=%cd%\devops
::set firstLine=1
for /f "delims=" %%i in (%HOMEPATH%\path.txt) do (
    ::if !firstLine!==1 set devops_path=%%i
    ::set firstLine=0
    devops_path=%%i
)
::endlocal

more %HOMEPATH%\path.txt
more %devops_path%\doc\logo\soft.txt