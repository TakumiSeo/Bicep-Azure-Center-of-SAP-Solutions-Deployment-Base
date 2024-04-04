@description('the location of the deployment')
param location string = resourceGroup().location

module suseIpList 'modules/deploymentscript/suse.bicep' = {
  name: 'suseIpList'
  params: {
    location: location
  }
}

// output suseIpList string = suseIpList.outputs.suseIp
module virtualNetwork 'modules/network/virtualnetwork.bicep' = {
  name: 'virtualNetwork'
  params: {
    location: location
    suseIpList: suseIpList.outputs.suseIp
  }
}

