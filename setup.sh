#!/bin/bash

for chart in blue green switch ; do
    helm install -n $chart $chart
done

# simplest way to make flip.sh work; initial deploy defaults to blue
helm upgrade --set color=green switch switch
