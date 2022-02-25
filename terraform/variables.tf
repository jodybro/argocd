variable "repo" {
  type = string
  description = "Repo to deploy argocd from"
  default = "https://github.com/jodybro/argocd"
}

variable "app" {
  type = string
  description = "Argocd app name"
  default = "argocd"
}
