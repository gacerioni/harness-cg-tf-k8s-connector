terraform {
  required_providers {
    harness = {
      source = "harness/harness"
      version = ">= 0.6.10"
    }
  }
}


# HARNESS_API_KEY is the var for CG PAT
# 
provider "harness" {
  endpoint   = "https://app.harness.io/gateway"
}