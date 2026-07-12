locals {
  cognitive_accounts = { for k1, v1 in var.cognitive_accounts : k1 => { custom_question_answering_search_service_id = v1.custom_question_answering_search_service_id, custom_question_answering_search_service_key = v1.custom_question_answering_search_service_key, custom_subdomain_name = v1.custom_subdomain_name, customer_managed_key = v1.customer_managed_key, dynamic_throttling_enabled = v1.dynamic_throttling_enabled, fqdns = v1.fqdns, identity = v1.identity, kind = v1.kind, local_auth_enabled = v1.local_auth_enabled, location = v1.location, metrics_advisor_aad_client_id = v1.metrics_advisor_aad_client_id, metrics_advisor_aad_tenant_id = v1.metrics_advisor_aad_tenant_id, metrics_advisor_super_user_name = v1.metrics_advisor_super_user_name, metrics_advisor_website_name = v1.metrics_advisor_website_name, name = v1.name, network_acls = v1.network_acls, network_injection = v1.network_injection, outbound_network_access_restricted = v1.outbound_network_access_restricted, project_management_enabled = v1.project_management_enabled, public_network_access_enabled = v1.public_network_access_enabled, qna_runtime_endpoint = v1.qna_runtime_endpoint, resource_group_name = v1.resource_group_name, sku_name = v1.sku_name, storage = v1.storage, tags = v1.tags } }

  cognitive_account_customer_managed_keys = merge([
    for k1, v1 in var.cognitive_accounts : {
      for k2, v2 in coalesce(v1.cognitive_account_customer_managed_keys, {}) :
      "${k1}/${k2}" => merge(v2, {
        cognitive_account_id = module.cognitive_accounts.cognitive_accounts_id["${k1}"]
      })
    }
  ]...)

  cognitive_account_projects = merge([
    for k1, v1 in var.cognitive_accounts : {
      for k2, v2 in coalesce(v1.cognitive_account_projects, {}) :
      "${k1}/${k2}" => merge(v2, {
        cognitive_account_id = module.cognitive_accounts.cognitive_accounts_id["${k1}"]
      })
    }
  ]...)

  cognitive_account_rai_blocklists = merge([
    for k1, v1 in var.cognitive_accounts : {
      for k2, v2 in coalesce(v1.cognitive_account_rai_blocklists, {}) :
      "${k1}/${k2}" => merge(v2, {
        cognitive_account_id = module.cognitive_accounts.cognitive_accounts_id["${k1}"]
      })
    }
  ]...)

  cognitive_account_rai_policies = merge([
    for k1, v1 in var.cognitive_accounts : {
      for k2, v2 in coalesce(v1.cognitive_account_rai_policies, {}) :
      "${k1}/${k2}" => merge(v2, {
        cognitive_account_id = module.cognitive_accounts.cognitive_accounts_id["${k1}"]
      })
    }
  ]...)

  cognitive_deployments = merge([
    for k1, v1 in var.cognitive_accounts : {
      for k2, v2 in coalesce(v1.cognitive_deployments, {}) :
      "${k1}/${k2}" => merge(v2, {
        cognitive_account_id = module.cognitive_accounts.cognitive_accounts_id["${k1}"]
      })
    }
  ]...)
}

module "cognitive_accounts" {
  source             = "git::https://github.com/AeternaModules/azurerm_cognitive_account.git?ref=v4.80.0"
  cognitive_accounts = local.cognitive_accounts
}

module "cognitive_account_customer_managed_keys" {
  source                                  = "git::https://github.com/AeternaModules/azurerm_cognitive_account_customer_managed_key.git?ref=v4.80.0"
  cognitive_account_customer_managed_keys = local.cognitive_account_customer_managed_keys
  depends_on                              = [module.cognitive_accounts]
}

module "cognitive_account_projects" {
  source                     = "git::https://github.com/AeternaModules/azurerm_cognitive_account_project.git?ref=v4.80.0"
  cognitive_account_projects = local.cognitive_account_projects
  depends_on                 = [module.cognitive_accounts]
}

module "cognitive_account_rai_blocklists" {
  source                           = "git::https://github.com/AeternaModules/azurerm_cognitive_account_rai_blocklist.git?ref=v4.80.0"
  cognitive_account_rai_blocklists = local.cognitive_account_rai_blocklists
  depends_on                       = [module.cognitive_accounts]
}

module "cognitive_account_rai_policies" {
  source                         = "git::https://github.com/AeternaModules/azurerm_cognitive_account_rai_policy.git?ref=v4.80.0"
  cognitive_account_rai_policies = local.cognitive_account_rai_policies
  depends_on                     = [module.cognitive_accounts]
}

module "cognitive_deployments" {
  source                = "git::https://github.com/AeternaModules/azurerm_cognitive_deployment.git?ref=v4.80.0"
  cognitive_deployments = local.cognitive_deployments
  depends_on            = [module.cognitive_accounts]
}

