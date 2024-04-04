az group create --location japaneast --name "rg-acss"
az deployment group create --resource-group "rg-acss" --name "acss001" --template-file main.bicep