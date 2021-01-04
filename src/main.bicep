param resourcePrefix string 
param location string = 'eastus'

resource appServicePlan 'Microsoft.Web/serverfarms@2020-06-01' = {
  name: '${resourcePrefix}plan${location}'
  location: location
  sku: {
    name: 'S1'
  }
  kind: 'linux'
  properties: {
    reserved: true
  }
}

resource appService0101 'Microsoft.Web/sites@2020-06-01' = {
  name: '${resourcePrefix}app01${location}01'
  location: location
  kind: 'app'
  properties: {
    serverFarmId: appServicePlan.id
    siteConfig: {
      linuxFxVersion: 'DOTNETCORE|5.0'
      appSettings: [
        {
          name: 'InstanceName'
          value: '${resourcePrefix}app01${location}01'
        }
      ]
    }
  }
}

resource appService0102 'Microsoft.Web/sites@2020-06-01' = {
  name: '${resourcePrefix}app01${location}02'
  location: location
  kind: 'app'
  properties: {
    serverFarmId: appServicePlan.id
    siteConfig: {
      linuxFxVersion: 'DOTNETCORE|5.0'
      appSettings: [
        {
          name: 'InstanceName'
          value: '${resourcePrefix}app01${location}02'
        }
      ]
    }
  }
}

resource appService0201 'Microsoft.Web/sites@2020-06-01' = {
  name: '${resourcePrefix}app02${location}01'
  location: location
  kind: 'app'
  properties: {
    serverFarmId: appServicePlan.id
    siteConfig: {
      linuxFxVersion: 'DOTNETCORE|5.0'
      appSettings: [
        {
          name: 'InstanceName'
          value: '${resourcePrefix}app02${location}01'
        }
      ]
    }
  }
}

resource appService0202 'Microsoft.Web/sites@2020-06-01' = {
  name: '${resourcePrefix}app02${location}02'
  location: location
  kind: 'app'
  properties: {
    serverFarmId: appServicePlan.id
    siteConfig: {
      linuxFxVersion: 'DOTNETCORE|5.0'
      appSettings: [
        {
          name: 'InstanceName'
          value: '${resourcePrefix}app02${location}02'
        }
      ]
    }
  }
}