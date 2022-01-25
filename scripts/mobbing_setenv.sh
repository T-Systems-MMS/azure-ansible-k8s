#!/bin/bash

LOCATION=westeurope
RESOURCE_GROUP=mobbing_azure

export MOB_TIMER_ROOM=funny-newt-31
az account set --subscription="af14c425-1910-4abc-8723-89f0d7739815"
az configure --defaults location="${LOCATION}" group="${RESOURCE_GROUP}"
az aks get-credentials --resource-group "${RESOURCE_GROUP}" --name "mobbing_azure_aks"
kubectl cluster-info
