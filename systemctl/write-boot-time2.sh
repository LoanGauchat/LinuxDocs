#!/bin/bash
now=$(date)
if [ $1 ==  1 ]
then
        echo "boot finished: $now" > /var/log/custom/boottest_1.log
else
        echo "boot finished: $now" > /var/log/custom/boottest_2.log
fi



