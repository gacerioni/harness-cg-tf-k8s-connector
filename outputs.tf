output "cp_k8s_connector_id" {
  value       = harness_cloudprovider_kubernetes.harnesseks.id
  description = "ID of the K8s CP Connector"
}

output "cp_k8s_connector_name" {
  value       = harness_cloudprovider_kubernetes.harnesseks.name
  description = "Name of the K8s CP Connector"
}

output "harness_cg_app_id" {
  value       = harness_application.harness_cg_app.id
  description = "ID of the App that was created."
}

output "harness_cg_app_name" {
  value       = harness_application.harness_cg_app.name
  description = "Name of the App that was created."
}


