terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      version = "3.6.1"
    }
  }
}

provider "newrelic" {
  account_id = 3659328
  api_key = "NRAK-QEDHCML2YSWBX1H69ENB8DM99L4"    # usually prefixed with 'NRAK'
  region = "US"                    # Valid regions are US and EU
}