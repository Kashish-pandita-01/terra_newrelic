terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      version = "3.6.1"
    }
  }
}

provider "newrelic" {
     # usually prefixed with 'NRAK'
  region = "US"                    # Valid regions are US and EU
}