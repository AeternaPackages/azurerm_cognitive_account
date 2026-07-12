variable "cognitive_accounts" {
  description = <<EOT
Map of cognitive_accounts, attributes below
Required:
    - kind
    - location
    - name
    - resource_group_name
    - sku_name
Optional:
    - custom_question_answering_search_service_id
    - custom_question_answering_search_service_key
    - custom_question_answering_search_service_key_key_vault_id (alternative to custom_question_answering_search_service_key - read from Key Vault instead)
    - custom_question_answering_search_service_key_key_vault_secret_name (alternative to custom_question_answering_search_service_key - read from Key Vault instead)
    - custom_subdomain_name
    - dynamic_throttling_enabled
    - fqdns
    - local_auth_enabled
    - metrics_advisor_aad_client_id
    - metrics_advisor_aad_tenant_id
    - metrics_advisor_super_user_name
    - metrics_advisor_website_name
    - outbound_network_access_restricted
    - project_management_enabled
    - public_network_access_enabled
    - qna_runtime_endpoint
    - tags
    - customer_managed_key (block)
    - identity (block)
    - network_acls (block)
    - network_injection (block)
    - storage (block)
Nested cognitive_account_customer_managed_keys (azurerm_cognitive_account_customer_managed_key):
    Required:
        - key_vault_key_id
    Optional:
        - identity_client_id
Nested cognitive_account_projects (azurerm_cognitive_account_project):
    Required:
        - location
        - name
        - identity (block)
    Optional:
        - description
        - display_name
        - tags
Nested cognitive_account_rai_blocklists (azurerm_cognitive_account_rai_blocklist):
    Required:
        - name
    Optional:
        - description
        - tags
Nested cognitive_account_rai_policies (azurerm_cognitive_account_rai_policy):
    Required:
        - base_policy_name
        - name
        - content_filter (block)
    Optional:
        - mode
        - tags
Nested cognitive_deployments (azurerm_cognitive_deployment):
    Required:
        - name
        - model (block)
        - sku (block)
    Optional:
        - dynamic_throttling_enabled
        - rai_policy_name
        - version_upgrade_option
EOT

  type = map(object({
    kind                                                               = string
    location                                                           = string
    name                                                               = string
    resource_group_name                                                = string
    sku_name                                                           = string
    public_network_access_enabled                                      = optional(bool) # Default: true
    project_management_enabled                                         = optional(bool) # Default: false
    outbound_network_access_restricted                                 = optional(bool) # Default: false
    metrics_advisor_website_name                                       = optional(string)
    metrics_advisor_super_user_name                                    = optional(string)
    metrics_advisor_aad_tenant_id                                      = optional(string)
    fqdns                                                              = optional(list(string))
    local_auth_enabled                                                 = optional(bool) # Default: true
    qna_runtime_endpoint                                               = optional(string)
    dynamic_throttling_enabled                                         = optional(bool)
    custom_subdomain_name                                              = optional(string)
    custom_question_answering_search_service_key                       = optional(string)
    custom_question_answering_search_service_key_key_vault_id          = optional(string)
    custom_question_answering_search_service_key_key_vault_secret_name = optional(string)
    custom_question_answering_search_service_id                        = optional(string)
    metrics_advisor_aad_client_id                                      = optional(string)
    tags                                                               = optional(map(string))
    customer_managed_key = optional(object({
      identity_client_id = optional(string)
      key_vault_key_id   = string
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    network_acls = optional(object({
      bypass         = optional(string)
      default_action = string
      ip_rules       = optional(set(string))
      virtual_network_rules = optional(list(object({
        ignore_missing_vnet_service_endpoint = optional(bool) # Default: false
        subnet_id                            = string
      })))
    }))
    network_injection = optional(object({
      scenario  = string
      subnet_id = string
    }))
    storage = optional(list(object({
      identity_client_id = optional(string)
      storage_account_id = string
    })))
    cognitive_account_customer_managed_keys = optional(map(object({
      key_vault_key_id   = string
      identity_client_id = optional(string)
    })))
    cognitive_account_projects = optional(map(object({
      location     = string
      name         = string
      description  = optional(string)
      display_name = optional(string)
      tags         = optional(map(string))
      identity = object({
        identity_ids = optional(set(string))
        type         = string
      })
    })))
    cognitive_account_rai_blocklists = optional(map(object({
      name        = string
      description = optional(string)
      tags        = optional(map(string))
    })))
    cognitive_account_rai_policies = optional(map(object({
      base_policy_name = string
      name             = string
      mode             = optional(string)
      tags             = optional(map(string))
      content_filter = list(object({
        block_enabled      = bool
        filter_enabled     = bool
        name               = string
        severity_threshold = string
        source             = string
      }))
    })))
    cognitive_deployments = optional(map(object({
      name                       = string
      dynamic_throttling_enabled = optional(bool)
      rai_policy_name            = optional(string)
      version_upgrade_option     = optional(string) # Default: "OnceNewDefaultVersionAvailable"
      model = object({
        format  = string
        name    = string
        version = optional(string)
      })
      sku = object({
        capacity = optional(number) # Default: 1
        family   = optional(string)
        name     = string
        size     = optional(string)
        tier     = optional(string)
      })
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.cognitive_accounts) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.cognitive_accounts : [for kk in keys(coalesce(v0.cognitive_account_customer_managed_keys, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.cognitive_accounts : [for kk in keys(coalesce(v0.cognitive_account_projects, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.cognitive_accounts : [for kk in keys(coalesce(v0.cognitive_account_rai_blocklists, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.cognitive_accounts : [for kk in keys(coalesce(v0.cognitive_account_rai_policies, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.cognitive_accounts : [for kk in keys(coalesce(v0.cognitive_deployments, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
