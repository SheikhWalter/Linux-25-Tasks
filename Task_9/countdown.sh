#!/bin/bash

function countdown
{
    for ((i = $1 ; i >= 0 ; i--));
    do
        echo $i
        sleep 1
    done
}

echo -n "Enter a number: "
read num
countdown num
echo "Time's up!"