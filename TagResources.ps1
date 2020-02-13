#Find Azure Resource providers here: https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/azure-services-resource-providers

#Always login first!
#az login

$subscriptionId = "azure-subscription-id"
$resourceGroup = "azure-resource-group-name"
$resourceName = "azure-resource-name"
$resourceProviderType = "azure-provider-here"

#View a Resource
az resource show --name $resourceName --resource-group $resourceGroup --resource-type $resourceProviderType --subscription $subscriptionId

#Overwrite tags on a Resource
az resource tag --tags 'ExampleTagKey0=ExampleTagValue0' 'ExampleTagKey1=ExampleTagValue1' --name $resourceName --resource-group $resourceGroup --resource-type $resourceProviderType --subscription $subscriptionId

#Remove all tags
az resource tag --tags '' --name $resourceName --resource-group $resourceGroup --resource-type $resourceProviderType --subscription $subscriptionId
