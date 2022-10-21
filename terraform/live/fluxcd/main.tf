module "kind" {
  source = "../../modules/kind"
}

module "fluxcd" {
  source = "../../modules/fluxcd"
  cluster_ca_certificate     = module.kind.kind_ca_certificate
  cluster_client_certificate = module.kind.kind_client_certificate
  cluster_client_key         = module.kind.kind_client_key
  cluster_host               = module.kind.kind_endpoint
  #argocd_configuration_git_repository = "https://github.com/krbialek/fluxcd-local-demo"
  #argocd_root_configuration_path = "fluxcd/apps/demo"
  github_owner = "krbialek"
  github_token = "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"
  repository_name = "fluxcd-local-demo"

}