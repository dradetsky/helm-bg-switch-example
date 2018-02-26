#!/bin/bash

current_color=$(./current-color.sh)

if [[ $current_color == 'blue' ]] ; then
    target_color=green
elif [[ $current_color == 'green' ]] ; then
    target_color=blue
else
    echo lolwut
    echo $current_color
    exit 1
fi

echo $current_color '->' $target_color

kubectl apply -f kube/$target_color.yaml
new_color=$(./current-color.sh)
echo now $new_color
