resource appServicePlan 'Microsoft.web/serverfarms@2022-03-01' = {
  name: 'asp'
  location: 'eastus'
  sku: {
    name: 'P0v3'
  }
  kind: 'linux'
  properties: {
    reserved: true
  }
}

resource appService 'Microsoft.Web/sites@2022-03-01' = {
  name: 'server'
  location: 'eastus'
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
    siteConfig: {
      linuxFxVersion: 'python|3.12'
      appCommandLine: 'gunicorn -w 2 -k uvicorn.workers.UvicornWorker app:app'
      alwaysOn: true
    }
  }
}

resource appServiceSettings 'Microsoft.Web/sites/config@2022-03-01' = {
  parent: appService
  name: 'appsettings'
  kind: 'string'
  properties: {
    RANDOM_ENV_VAR: 'dis env var heheXd'
  }
}
