#!/bin/bash

if [! -f "$1"]; then
 echo "Given file doesnot exist"
 exit 1
fi

echo -e "Hello XYZ,\n\tMy name TRAINER_NAME and I am a COURSE_NAME 
trainer.\nWe are starting a new batch from Date and timing is TIMING. If you are interested then please contact us on PH_NUMBER\n\n"