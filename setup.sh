#!/bin/bash

for chart in blue green switch ; do
    helm install -n $chart $chart
done
