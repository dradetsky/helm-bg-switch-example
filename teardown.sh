#!/bin/bash

for chart in blue green switch ; do
    helm delete $chart
done
