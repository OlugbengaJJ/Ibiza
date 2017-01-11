#!/bin/bash

echo "************* set environment variables"

## Service Principal ID
export ARM_CLIENT_ID=$1

## Service Principal Key
export ARM_CLIENT_SECRET=$2

## Azure Resource Group
export ARM_RESOURCE_GROUP=$3

## Azure Storage Account
export ARM_STORAGE_ACCOUNT=$4

## Azure Subscription ID
export ARM_SUBSCRIPTION_ID=$5

## Azure Tenant ID
export ARM_TENANT_ID=$6

## Azure VMSS Admin
export ADMIN_USERNAME=$7

## Azure VMSS Admin Password
export ADMIN_PASSWORD=$8

echo "Subscription"
echo $1
echo $2
echo $3
echo $4
echo $5
echo $6
echo $7
echo $8

echo "Subscription 1"
echo $ARM_SUBSCRIPTION_ID

echo "************* execute packer build"

rm packer-build-output.log

echo "************* execute packer build"
## execute packer build and sendout to packer-build-output file
packer build ./nodejs-packer.json 2>&1 | tee packer-build-output.log

cat azuredeploy.parameters.json

