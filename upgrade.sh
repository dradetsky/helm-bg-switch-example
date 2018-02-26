#!/bin/bash

color=$1
version=$2

helm upgrade --set tag=$version --set color=$color $color deploy
