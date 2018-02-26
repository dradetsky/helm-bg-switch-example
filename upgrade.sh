#!/bin/bash

color=$1
version=$2

helm upgrade --set tag=$version $color $color
