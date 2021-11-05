targetScope = 'subscription'

param name string
param location string

resource resourceGroup 'Microsoft.Resources/resourceGroups@2019-05-01' = {
  name: name
  location: location
}
