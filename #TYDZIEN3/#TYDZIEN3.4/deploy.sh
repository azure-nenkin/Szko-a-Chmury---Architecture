#!/bin/sh

location="westeurope"
rgkvName="azure-nenkin-kv-rg"
kvName="azure-nenkin-kv"
rgName="tydzien3-rg"

az group create --name $rgkvName --location $location
az keyvault create --name $kvName --resource-group $rgkvName

az keyvault update -n $kvName -g $rgkvName --set properties.enabledForDeployment=true
az keyvault update -n $kvName -g $rgkvName --set properties.enabledForTemplateDeployment=true

adminUserName="adminUsername"
adminUserSecret="adminuser"
az keyvault secret set --name $adminUserName --vault-name $kvName --value $adminUserSecret

adminPasswordName="adminPassword"
adminPasswordSecret="SzkolaChmury#3"
az keyvault secret set --name $adminPasswordName --vault-name $kvName --value $adminPasswordSecret

az group create --name $rgName --location $location
az group deployment create --name Tydzien3 --resource-group $rgName --template-file deploy.json --parameters deploy.parameters.json
