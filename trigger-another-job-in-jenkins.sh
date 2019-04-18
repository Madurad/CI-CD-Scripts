#!/bin/bash
#================================================================
# Trigger-Persona-Job-after-Batch-Jobs
#================================================================
# Script has been developed to stop EC2 instance once it's not closed to specific time.
# If the time greater than specified time, Server is NOT stopping.
# If time is NOT greater than specified time, Server will be stopped
#
#================================================================
# IMPLEMENTATION
#    version         v0.0.1
#    author          Madura Dissanayake
#    date            17-04-2019
#================================================================

echo "job-D-done" > ~/Downloads/sample-text.out
echo "job-C-done" >> ~/Downloads/sample-text.out

output=`sed 'N;s/\n/ /' ~/Downloads/sample-text.out`
echo $output

while true
do
    output=`sed 'N;s/\n/ /' ~/Downloads/sample-text.out`
    if [ "$output" = "job-C-done job-D-done" ] || [ "$output" = "job-D-done job-C-done" ]
    then
    echo "pattern matched"
    break
    else
    echo "pattern not-matched"
    fi
done
