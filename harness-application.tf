resource "harness_application" "harness_cg_app" {
  name        = var.application_name
  description = var.application_description

  tags = var.application_tags
}