#!/bin/bash
# Script para lazar sentencias SQL y obtener un log del resultado
# Usage: execute <host> <directory>
# It will connect to host and execute all SQL inside directory using alphabetical order for SQL files

# Note it nees backslash escape in bash
HOST=$1
INPUT_DIR=$2
LOG_FILE=output.log
TEMP_FILE=temp.log

SQLCMD="/C/Program Files/Microsoft SQL Server/Client SDK/ODBC/170/Tools/Binn/SQLCMD.EXE"

echo "Connecting to $HOST"
echo "Connecting to $HOST" > $LOG_FILE
echo "Scanning for SQL files in directory: $INPUT_DIR" 
echo "Scanning for SQL files in directory: $INPUT_DIR" >> $LOG_FILE

t0=`date --iso-8601=s`
echo $t0 - Started
echo $t0 - Started >> $LOG_FILE

FILES=$INPUT_DIR/*.sql
for f in $FILES
do
    ts=`date --iso-8601=s`
    echo "$ts - Processing: $f"
    echo "$ts - Processing: $f" >> $LOG_FILE
    "$SQLCMD" -S "$HOST" -i "$f"  -o $TEMP_FILE

    cat $TEMP_FILE
    cat $TEMP_FILE >> $LOG_FILE
done

rm $TEMP_FILE

t1=`date --iso-8601=s`
echo $t1 - Ended.
echo $t1 - Ended. >> $LOG_FILE
