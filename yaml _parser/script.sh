#!/bin/bash

if [! -f "$1"]; then
 echo "Given file doesnot exist"
 exit 1
fi

i=0
STUDENT_COUNT=$(batch43.yml | yq . | jq '.studentDetails[].name' | wc -l)
NAMES=(`cat batch43.yml|yq .|jq '.studentDetails[].name'`)

while [$STUDENT_COUNT -gt 0];do 

echo -e "Hello ${NAME[$i]},\n\tMy name TRAINER_NAME and I am a COURSE_NAME 
trainer.\nWe are starting a new batch from Date and timing is TIMING. If you are interested then please contact us on PH_NUMBER\n\n"
STUDENT_COUNT=$(($STUDENT_COUNT-1))
done    