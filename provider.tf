terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      version = "3.6.1"
    }
  }
}

provider "newrelic" {
  account_id = var.account_id
  api_key = var.api_key
  region = "US"                    # Valid regions are US and EU
}