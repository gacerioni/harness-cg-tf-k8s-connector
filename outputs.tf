output "cp_k8s_connector_id" {
  value       = harness_cloudprovider_kubernetes.harnesseks.id
  description = "ID of the K8s CP Connector"
}

output "cp_k8s_connector_name" {
  value       = harness_cloudprovider_kubernetes.harnesseks.name
  description = "Name of the K8s CP Connector"
}