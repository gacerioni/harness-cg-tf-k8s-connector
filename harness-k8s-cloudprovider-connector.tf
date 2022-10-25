data "harness_secret_manager" "secretsmanager" {
  id = var.secrets_manager_id

}

resource "harness_encrypted_text" "serviceaccounttoken" {
  name              = var.serviceaccount_token_name
  value             = var.serviceaccount_token
  secret_manager_id = data.harness_secret_manager.secretsmanager.id

    usage_scope {
    environment_filter_type = "NON_PRODUCTION_ENVIRONMENTS"
  }

  usage_scope {
    environment_filter_type = "PRODUCTION_ENVIRONMENTS"
  }
}

resource "harness_cloudprovider_kubernetes" "harnesseks" {

  name            = var.cp_k8s_connector_name
  skip_validation = false

  authentication {
    service_account {
      master_url = var.cp_k8s_master_url
      service_account_token_secret_name = harness_encrypted_text.serviceaccounttoken.name
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}