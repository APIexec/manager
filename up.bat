::cd devops
::setlocal enableextensions enabledelayedexpansion
set devops_path=%cd%\devops
::set firstLine=1
for /f "delims=" %%i in (%HOMEPATH%\path.txt) do (
    ::if !firstLine!==1 set devops_path=%%i
    ::set firstLine=0
    set devops_path=%%i
)
cd %devops_path%