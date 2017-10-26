#!/bin/zsh

FILE_PATH=$1
cd $FILE_PATH
GIT_PATH=`which git`
$GIT_PATH add .
$GIT_PATH cs -m "Auto commit at `date +'%Y-%m-%d %H:%M:%S'`."
$GIT_PATH push
