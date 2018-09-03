#!/bin/bash

INPUT_FILE=$1
OUTPUT_FILE=$2

cat $INPUT_FILE

read -r -d '' OUTPUT << EOM
{
  "rootfs" "/isolated_fs"
  "user": "app_user"
}
EOM

echo $OUTPUT > $OUTPUT_FILE
