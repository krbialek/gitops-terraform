variable "github_owner" {
  type        = string
  description = "github owner"
}

variable "github_token" {
  type        = string
  description = "github token"
}

variable "repository_name" {
  type        = string
  default     = "test-provider"
  description = "github repository name"
}

variable "repository_visibility" {
  type        = string
  default     = "public"
  description = "How visible is the github repo"
}

variable "branch" {
  type        = string
  default     = "main"
  description = "branch name"
}

variable "target_path" {
  type        = string
  default     = "staging-cluster"
  description = "flux sync target path"
}

###########################
# Kubernetes variables
###########################
variable "cluster_ca_certificate" {
  type        = string
  description = "Base64 encoded root certificates bundle for TLS authentication."
}

variable "cluster_client_key" {
  type        = string
  description = "The bearer token to use for authentication when accessing the Kubernetes API. "
}

variable "cluster_client_certificate" {
  type        = string
  description = "The bearer token to use for authentication when accessing the Kubernetes API. "
}


variable "cluster_host" {
  type        = string
  description = "The hostname (in form of URI) of the Kubernetes API"
}