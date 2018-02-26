#!/bin/bash

kubectl get svc/switch -o jsonpath='{.spec.selector.color}'
