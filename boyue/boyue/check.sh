#!/bin/sh

MYSQL_DIR=data/mysql/data
if [ ! -d $MYSQL_DIR ]; then
    echo "missing $MYSQL_DIR"
    exit 1
fi
