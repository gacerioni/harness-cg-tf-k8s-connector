variable "secrets_manager_id" {
    type = string
    default     = "6TLq_CboQ5CUtQyDev2yQg"
    description = "I got this from GQL - query: secretManagers."
}


variable "serviceaccount_token" {
    type = string
    description = "The SA Token used to Auth against this Cluster. Im user admin lvl."
}

variable "serviceaccount_token_name" {
    type = string  
    description = "This is the secret name to host the SA Token in Harness."
}

variable "cp_k8s_connector_name" {
    type = string
    description = "The name for the Cloud Provider Connector Name - K8s."
}

variable "cp_k8s_master_url" {
    type = string
    description = "The Master URL (API) for the Connector."
}

variable "application_name" {
    type = string
    description = "The name of your CG App."
}

variable "application_description" {
    type = string
    description = "The description of your CG App."
}


variable "application_tags" {
    type    = list(string)
    description = "The tags of your CG App."
    default = [
               "region:sa-east-1a",
               "mytag:myvalue",
               "team:gabs-squad"
              ]
}