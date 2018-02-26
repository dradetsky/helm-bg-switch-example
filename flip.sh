#!/bin/bash

color_query=$(helm get values switch)

if [[ $color_query == 'color: blue' ]] ; then
    current_color=blue
    target_color=green
elif [[ $color_query == 'color: green' ]] ; then
    current_color=green
    target_color=blue
else
    echo lolwut
    echo $color_query
    exit 1
fi

echo $current_color '->' $target_color

helm upgrade --set color=$target_color switch switch
