targetScope = 'subscription'

@description('A first subscription, Subscription 1, to deploy a resource group into')
param subscriptionId1 string = subscription().subscriptionId

@description('The resource group name to deploy into Subscription 1')
param resourceGroupName1 string = 'resourceGroup1'

@description('A second subscription, Subscription 2, to deploy a resource group into')
param subscriptionId2 string 

@description('The resource group name to deploy into Subscription 2')
param resourceGroupName2 string = 'resourceGroup2'

@description('A region to deploy the resource groups into')
param location string = deployment().location

module resourceGroup1 './modules/resourceGroup.bicep' = {
  name: resourceGroupName1
  scope: subscription(subscriptionId1)
  params: {
    name: resourceGroupName1
    location: location
  }
}

module resourceGroup2 './modules/resourceGroup.bicep' = {
  name: resourceGroupName2
  scope: subscription(subscriptionId2)
  params: {
    name: resourceGroupName2
    location: location
  }
}
