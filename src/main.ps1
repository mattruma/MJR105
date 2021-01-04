param(
    [ValidatePattern('^[a-zA-Z0-9]+$')]
    [Parameter(Mandatory = $true)] [String] $ResourcePrefix, 
    [Parameter(Mandatory = $true)] [String] $Location,  
    [String] $TemplateFile = './main.json'
)

$ErrorActionPreference = "Stop"

Write-Host "Resource Prefix                 : $($ResourcePrefix)"
Write-Host "Location                        : $($Location)"

$ResourceGroupName = "$($ResourcePrefix)rg$($Location)"

Write-Host "Resource Group Name             : $($ResourceGroupName)"

az group create `
    -n $ResourceGroupName `
    -l $Location

az deployment group create `
    -g $ResourceGroupName `
    -f $TemplateFile `
    --parameters resourcePrefix=$ResourcePrefix `
    --parameters location=$Location