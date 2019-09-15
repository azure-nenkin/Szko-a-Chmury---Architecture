#!/bin/bash

az group create --name tydzien3-rg --location westeurope
az group deployment create --name Tydzien3 --resource-group "tydzien3-rg" --template-file deploy.json --parameters deploy.parameters.json
