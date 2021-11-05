# multiple-subscription-bicep-template

This template generates a subscription scoped ARM JSON template [multipleSubscriptionDeployment.json](./multipleSubscriptionDeployment.json) that contains two `Microsoft.Resources/deployments` resources.

The ARM JSON template [multipleSubscriptionDeployment.json](./multipleSubscriptionDeployment.json) deploys successfully into `AzureCloud`. In Azure Stack Hub, it returns a `InvalidTemplate` error.

## Deploying the ARM template

Clone this repo, then use the Azure CLI make a subscription scoped deployment with `az deployment sub create`.

The first subscription ID will be defaulted from the contextual Azure CLI subscription. You'll be prompted for the second subscription ID:

```plaintext
az deployment sub create \
  --location eastus \
  --template-file multipleSubscriptionDeployment.json
```
