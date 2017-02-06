#!/bin/bash

azure group deployment create -f azuredeploy.json -e azuredeploy.parameters.concrete.json  -g $1 -n $2