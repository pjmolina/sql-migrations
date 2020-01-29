:-- Script prepared for DOS shell
:-- Usage: execute <host> <directory>
:-- It will connect to host and execute all SQL inside directory using alphabetical order for SQL files
@echo off

:-- set HOST=%1%
set HOST=.\sqlexpress
set DATABASE=FootballCup
set QUERY="select top 1 version, timestamp, substring(description, 0, 50) from SchemaVersion order by timestamp DESC"

sqlcmd -S %HOST% -d %DATABASE% -Q %QUERY%