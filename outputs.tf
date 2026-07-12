# --- azurerm_cognitive_account ---
output "cognitive_accounts_custom_question_answering_search_service_id" {
  description = "Map of custom_question_answering_search_service_id values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_custom_question_answering_search_service_id
}

output "cognitive_accounts_custom_question_answering_search_service_key" {
  description = "Map of custom_question_answering_search_service_key values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_custom_question_answering_search_service_key
  sensitive   = true
}

output "cognitive_accounts_custom_subdomain_name" {
  description = "Map of custom_subdomain_name values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_custom_subdomain_name
}

output "cognitive_accounts_customer_managed_key" {
  description = "Map of customer_managed_key values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_customer_managed_key
}

output "cognitive_accounts_dynamic_throttling_enabled" {
  description = "Map of dynamic_throttling_enabled values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_dynamic_throttling_enabled
}

output "cognitive_accounts_endpoint" {
  description = "Map of endpoint values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_endpoint
}

output "cognitive_accounts_fqdns" {
  description = "Map of fqdns values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_fqdns
}

output "cognitive_accounts_identity" {
  description = "Map of identity values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_identity
}

output "cognitive_accounts_kind" {
  description = "Map of kind values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_kind
}

output "cognitive_accounts_local_auth_enabled" {
  description = "Map of local_auth_enabled values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_local_auth_enabled
}

output "cognitive_accounts_location" {
  description = "Map of location values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_location
}

output "cognitive_accounts_metrics_advisor_aad_client_id" {
  description = "Map of metrics_advisor_aad_client_id values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_metrics_advisor_aad_client_id
}

output "cognitive_accounts_metrics_advisor_aad_tenant_id" {
  description = "Map of metrics_advisor_aad_tenant_id values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_metrics_advisor_aad_tenant_id
}

output "cognitive_accounts_metrics_advisor_super_user_name" {
  description = "Map of metrics_advisor_super_user_name values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_metrics_advisor_super_user_name
}

output "cognitive_accounts_metrics_advisor_website_name" {
  description = "Map of metrics_advisor_website_name values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_metrics_advisor_website_name
}

output "cognitive_accounts_name" {
  description = "Map of name values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_name
}

output "cognitive_accounts_network_acls" {
  description = "Map of network_acls values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_network_acls
}

output "cognitive_accounts_network_injection" {
  description = "Map of network_injection values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_network_injection
}

output "cognitive_accounts_outbound_network_access_restricted" {
  description = "Map of outbound_network_access_restricted values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_outbound_network_access_restricted
}

output "cognitive_accounts_primary_access_key" {
  description = "Map of primary_access_key values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_primary_access_key
  sensitive   = true
}

output "cognitive_accounts_project_management_enabled" {
  description = "Map of project_management_enabled values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_project_management_enabled
}

output "cognitive_accounts_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_public_network_access_enabled
}

output "cognitive_accounts_qna_runtime_endpoint" {
  description = "Map of qna_runtime_endpoint values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_qna_runtime_endpoint
}

output "cognitive_accounts_resource_group_name" {
  description = "Map of resource_group_name values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_resource_group_name
}

output "cognitive_accounts_secondary_access_key" {
  description = "Map of secondary_access_key values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_secondary_access_key
  sensitive   = true
}

output "cognitive_accounts_sku_name" {
  description = "Map of sku_name values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_sku_name
}

output "cognitive_accounts_storage" {
  description = "Map of storage values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_storage
}

output "cognitive_accounts_tags" {
  description = "Map of tags values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = module.cognitive_accounts.cognitive_accounts_tags
}

# --- azurerm_cognitive_account_customer_managed_key ---
output "cognitive_account_customer_managed_keys_cognitive_account_id" {
  description = "Map of cognitive_account_id values across all cognitive_account_customer_managed_keys, keyed the same as var.cognitive_account_customer_managed_keys"
  value       = module.cognitive_account_customer_managed_keys.cognitive_account_customer_managed_keys_cognitive_account_id
}

output "cognitive_account_customer_managed_keys_identity_client_id" {
  description = "Map of identity_client_id values across all cognitive_account_customer_managed_keys, keyed the same as var.cognitive_account_customer_managed_keys"
  value       = module.cognitive_account_customer_managed_keys.cognitive_account_customer_managed_keys_identity_client_id
}

output "cognitive_account_customer_managed_keys_key_vault_key_id" {
  description = "Map of key_vault_key_id values across all cognitive_account_customer_managed_keys, keyed the same as var.cognitive_account_customer_managed_keys"
  value       = module.cognitive_account_customer_managed_keys.cognitive_account_customer_managed_keys_key_vault_key_id
}

# --- azurerm_cognitive_account_project ---
output "cognitive_account_projects_cognitive_account_id" {
  description = "Map of cognitive_account_id values across all cognitive_account_projects, keyed the same as var.cognitive_account_projects"
  value       = module.cognitive_account_projects.cognitive_account_projects_cognitive_account_id
}

output "cognitive_account_projects_default" {
  description = "Map of default values across all cognitive_account_projects, keyed the same as var.cognitive_account_projects"
  value       = module.cognitive_account_projects.cognitive_account_projects_default
}

output "cognitive_account_projects_description" {
  description = "Map of description values across all cognitive_account_projects, keyed the same as var.cognitive_account_projects"
  value       = module.cognitive_account_projects.cognitive_account_projects_description
}

output "cognitive_account_projects_display_name" {
  description = "Map of display_name values across all cognitive_account_projects, keyed the same as var.cognitive_account_projects"
  value       = module.cognitive_account_projects.cognitive_account_projects_display_name
}

output "cognitive_account_projects_endpoints" {
  description = "Map of endpoints values across all cognitive_account_projects, keyed the same as var.cognitive_account_projects"
  value       = module.cognitive_account_projects.cognitive_account_projects_endpoints
}

output "cognitive_account_projects_identity" {
  description = "Map of identity values across all cognitive_account_projects, keyed the same as var.cognitive_account_projects"
  value       = module.cognitive_account_projects.cognitive_account_projects_identity
}

output "cognitive_account_projects_location" {
  description = "Map of location values across all cognitive_account_projects, keyed the same as var.cognitive_account_projects"
  value       = module.cognitive_account_projects.cognitive_account_projects_location
}

output "cognitive_account_projects_name" {
  description = "Map of name values across all cognitive_account_projects, keyed the same as var.cognitive_account_projects"
  value       = module.cognitive_account_projects.cognitive_account_projects_name
}

output "cognitive_account_projects_tags" {
  description = "Map of tags values across all cognitive_account_projects, keyed the same as var.cognitive_account_projects"
  value       = module.cognitive_account_projects.cognitive_account_projects_tags
}

# --- azurerm_cognitive_account_rai_blocklist ---
output "cognitive_account_rai_blocklists_cognitive_account_id" {
  description = "Map of cognitive_account_id values across all cognitive_account_rai_blocklists, keyed the same as var.cognitive_account_rai_blocklists"
  value       = module.cognitive_account_rai_blocklists.cognitive_account_rai_blocklists_cognitive_account_id
}

output "cognitive_account_rai_blocklists_description" {
  description = "Map of description values across all cognitive_account_rai_blocklists, keyed the same as var.cognitive_account_rai_blocklists"
  value       = module.cognitive_account_rai_blocklists.cognitive_account_rai_blocklists_description
}

output "cognitive_account_rai_blocklists_name" {
  description = "Map of name values across all cognitive_account_rai_blocklists, keyed the same as var.cognitive_account_rai_blocklists"
  value       = module.cognitive_account_rai_blocklists.cognitive_account_rai_blocklists_name
}

output "cognitive_account_rai_blocklists_tags" {
  description = "Map of tags values across all cognitive_account_rai_blocklists, keyed the same as var.cognitive_account_rai_blocklists"
  value       = module.cognitive_account_rai_blocklists.cognitive_account_rai_blocklists_tags
}

# --- azurerm_cognitive_account_rai_policy ---
output "cognitive_account_rai_policies_base_policy_name" {
  description = "Map of base_policy_name values across all cognitive_account_rai_policies, keyed the same as var.cognitive_account_rai_policies"
  value       = module.cognitive_account_rai_policies.cognitive_account_rai_policies_base_policy_name
}

output "cognitive_account_rai_policies_cognitive_account_id" {
  description = "Map of cognitive_account_id values across all cognitive_account_rai_policies, keyed the same as var.cognitive_account_rai_policies"
  value       = module.cognitive_account_rai_policies.cognitive_account_rai_policies_cognitive_account_id
}

output "cognitive_account_rai_policies_content_filter" {
  description = "Map of content_filter values across all cognitive_account_rai_policies, keyed the same as var.cognitive_account_rai_policies"
  value       = module.cognitive_account_rai_policies.cognitive_account_rai_policies_content_filter
}

output "cognitive_account_rai_policies_mode" {
  description = "Map of mode values across all cognitive_account_rai_policies, keyed the same as var.cognitive_account_rai_policies"
  value       = module.cognitive_account_rai_policies.cognitive_account_rai_policies_mode
}

output "cognitive_account_rai_policies_name" {
  description = "Map of name values across all cognitive_account_rai_policies, keyed the same as var.cognitive_account_rai_policies"
  value       = module.cognitive_account_rai_policies.cognitive_account_rai_policies_name
}

output "cognitive_account_rai_policies_tags" {
  description = "Map of tags values across all cognitive_account_rai_policies, keyed the same as var.cognitive_account_rai_policies"
  value       = module.cognitive_account_rai_policies.cognitive_account_rai_policies_tags
}

# --- azurerm_cognitive_deployment ---
output "cognitive_deployments_cognitive_account_id" {
  description = "Map of cognitive_account_id values across all cognitive_deployments, keyed the same as var.cognitive_deployments"
  value       = module.cognitive_deployments.cognitive_deployments_cognitive_account_id
}

output "cognitive_deployments_dynamic_throttling_enabled" {
  description = "Map of dynamic_throttling_enabled values across all cognitive_deployments, keyed the same as var.cognitive_deployments"
  value       = module.cognitive_deployments.cognitive_deployments_dynamic_throttling_enabled
}

output "cognitive_deployments_model" {
  description = "Map of model values across all cognitive_deployments, keyed the same as var.cognitive_deployments"
  value       = module.cognitive_deployments.cognitive_deployments_model
}

output "cognitive_deployments_name" {
  description = "Map of name values across all cognitive_deployments, keyed the same as var.cognitive_deployments"
  value       = module.cognitive_deployments.cognitive_deployments_name
}

output "cognitive_deployments_rai_policy_name" {
  description = "Map of rai_policy_name values across all cognitive_deployments, keyed the same as var.cognitive_deployments"
  value       = module.cognitive_deployments.cognitive_deployments_rai_policy_name
}

output "cognitive_deployments_sku" {
  description = "Map of sku values across all cognitive_deployments, keyed the same as var.cognitive_deployments"
  value       = module.cognitive_deployments.cognitive_deployments_sku
}

output "cognitive_deployments_version_upgrade_option" {
  description = "Map of version_upgrade_option values across all cognitive_deployments, keyed the same as var.cognitive_deployments"
  value       = module.cognitive_deployments.cognitive_deployments_version_upgrade_option
}


