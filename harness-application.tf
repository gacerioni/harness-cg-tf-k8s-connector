resource "harness_application" "myapp" {
  name        = var.application_name
  description = var.application_description

  tags = var.application_tags
}