:-- Script prepared for DOS shell
:-- Usage: execute <host> <directory>
:-- It will connect to host and execute all SQL inside directory using alphabetical order for SQL files
@echo off

set HOST=%1%
set INPUT_DIR=%2%
set LOG_FILE=output.log
set TEMP_FILE=temp.log

echo Connecting to %HOST% 
echo Connecting to %HOST% > %LOG_FILE%

echo Scaning files from directory: %INPUT_DIR%
echo Scaning files from directory: %INPUT_DIR% >> %LOG_FILE%

set t0=%date% %time% 
echo %t0% - Started.
echo %t0% - Started. >> %LOG_FILE%

for /r %%f in (%INPUT_DIR%\*.sql) do (
    set ts=%date% %time%
    echo %ts% - Processing: %%f
    echo %ts% - Processing: %%f >> %LOG_FILE%
    sqlcmd -S %HOST% -i "%%f"  -o %TEMP_FILE%
    type %TEMP_FILE%
    type %TEMP_FILE% >> %LOG_FILE%
) 
del %TEMP_FILE%

set t1=%date% %time%
echo %t1% - Ended.
echo %t1% - Ended. >> %LOGFILE%
