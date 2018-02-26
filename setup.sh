#!/bin/bash

helm install -n switch switch

for color in blue green ; do
    helm install -n $color --set color=$color deploy
done
