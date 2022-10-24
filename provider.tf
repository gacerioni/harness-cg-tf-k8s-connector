terraform {
  required_providers {
    harness = {
      source = "harness/harness"
    }
  }
}


# HARNESS_API_KEY is the var for CG PAT
# 
provider "harness" {
  endpoint   = "https://app.harness.io/gateway"
}