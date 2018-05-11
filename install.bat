@ECHO OFF
:: SET PATH global
:: CONFIG
set devops_path=%cd%
set log_file=%devops_path%\logs.txt
set log_time=%time% < nul
set log_content=install %1 %2 %3
echo %log_time% %log_content% > %log_file%

call color 02

:: TODO: if onto exist get just TEXT
::more logo.txt

echo ,------.  ,------.,--.   ,--.,-----. ,------.  ,---.
echo ^|  .-.  \ ^|  .---' \  `.'  /'  .-.  '^|  .--. ''   .-'
echo ^|  ^|  \  :^|  `--,   \     / ^|  ^| ^|  ^|^|  '--' ^|`.  `-.
echo ^|  '--'  /^|  ^`---.   ^\   ^/  '  '-'  '^|  ^| --' .-'    ^|
echo `-------' `------'    `-'    `-----' `--'     `-----'
echo DevOps Project Tool

:: 1
set log_content=. Installation Process
echo %log_content%
echo %log_time% %log_content% >> %log_file%





:: 2
set log_content=. Try Download by Cloning, if exist git
echo %log_content%
echo %log_time% %log_content% >> %log_file%
WHERE git
IF %ERRORLEVEL%==0 GOTO AppGit



:: 3
set log_content=. Try to download and unpack file
echo %log_content%
echo %log_time% %log_content% >> %log_file%

WHERE node
IF %ERRORLEVEL%==0 GOTO AppNode



:: 4
set log_content=. Try to download and unpack file
echo %log_content%
echo %log_time% %log_content% >> %log_file%

WHERE python
IF %ERRORLEVEL%==0 GOTO AppPython


echo.

echo only for one platform
echo choosoe platform: Windows, Linux, MacOS


:AppGit
echo I am installing with Git
call git clone https://github.com/tom-sapletta-com/devops/
::call cd devops
GOTO End

:AppPython
echo I am installing with Python
GOTO End

:AppNode
echo I am installing with node
GOTO End

:End
cd devops
call init.bat
cd devops
::call cd devops
:: call dir
:: setx path "%path%;C:\Users\tom\WebstormProjects\do\devops"
echo ...

