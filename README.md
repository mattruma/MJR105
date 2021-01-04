# Introduction

## Azure

Open a terminal window, navigate to the `src` folder.

Run `bicep build main.bicep` to create the ARM template file to deploy to Azure.

Run `.\main.ps1`.

You will be prompted for the `ResourcePrefix` and the `Location`, e.g. `eastus` or `westus`.

Do this for each region you want to deploy app services.

## Apps

To deploy the apps, you will need to first build them.

From Visual Studio Code, in a terminal window, navigate to the `WebApp` directory and run `dotnet publish -c Release -o ./publish`,

Then right click the publish folder and select **Deploy to Web App** and select the App Service in the first region.

You will need to do this again, for the App Service in the second region.

Repeat for the `WepApi` project.
