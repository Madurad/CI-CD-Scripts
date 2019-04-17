#!/bin/bash

echo "job-C-done" > ~/Downloads/sample-text.out
#echo "job-D-done" >> ~/Downloads/sample-text.out

output=`sed 'N;s/\n/ /' ~/Downloads/sample-text.out`
echo $output

while true
do
    output=`sed 'N;s/\n/ /' ~/Downloads/sample-text.out`
    if [ "$output" != "job-C-done job-D-done" ] 
    then
    echo "pattern not-matched"
    else
    echo "pattern matched"
    break
    fi
done
