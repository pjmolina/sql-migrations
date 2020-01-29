#!/bin/bash
# Usage: getVersion <host>
# Note it nees backslash escape in bash

#HOST=$1
HOST=.\\sqlexpress
SQLCMD="/C/Program Files/Microsoft SQL Server/Client SDK/ODBC/170/Tools/Binn/SQLCMD.EXE"
QUERY="select top 1 version, timestamp, substring(description, 0, 50) from SchemaVersion order by timestamp DESC"
DATABASE=FootballCup

"$SQLCMD" -S $HOST -d $DATABASE -Q "$QUERY"