module "vyos-custom" {
  source = "github.com/bjw-s/terraform-github-repository?ref=v1.0.1"

  name        = "vyos-custom"
  description = "My custom VyOS build based on vyos-modular"
  topics      = ["vyos", "vyos-modular", "iac"]
  # visibility  = "public"

  auto_init          = true
  allow_merge_commit     = false
  allow_squash_merge     = true
  allow_auto_merge       = true
  delete_branch_on_merge = true

  has_issues   = true
  has_wiki     = false
  has_projects = false

  plaintext_secrets = merge(
    {},
    local.bjws_bot_secrets
  )

  issue_labels_manage_default_github_labels = true
  issue_labels = concat(
    [],
    local.issue_labels_semver,
    local.issue_labels_category
  )
}