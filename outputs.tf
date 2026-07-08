# --- azurerm_cognitive_account ---
output "cognitive_accounts" {
  description = "All cognitive_account resources"
  value       = module.cognitive_accounts.cognitive_accounts
  sensitive   = true
}
output "cognitive_accounts_custom_question_answering_search_service_id" {
  description = "List of custom_question_answering_search_service_id values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.custom_question_answering_search_service_id]
}
output "cognitive_accounts_custom_question_answering_search_service_key" {
  description = "List of custom_question_answering_search_service_key values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.custom_question_answering_search_service_key]
  sensitive   = true
}
output "cognitive_accounts_custom_subdomain_name" {
  description = "List of custom_subdomain_name values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.custom_subdomain_name]
}
output "cognitive_accounts_customer_managed_key" {
  description = "List of customer_managed_key values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.customer_managed_key]
}
output "cognitive_accounts_dynamic_throttling_enabled" {
  description = "List of dynamic_throttling_enabled values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.dynamic_throttling_enabled]
}
output "cognitive_accounts_endpoint" {
  description = "List of endpoint values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.endpoint]
}
output "cognitive_accounts_fqdns" {
  description = "List of fqdns values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.fqdns]
}
output "cognitive_accounts_identity" {
  description = "List of identity values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.identity]
}
output "cognitive_accounts_kind" {
  description = "List of kind values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.kind]
}
output "cognitive_accounts_local_auth_enabled" {
  description = "List of local_auth_enabled values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.local_auth_enabled]
}
output "cognitive_accounts_location" {
  description = "List of location values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.location]
}
output "cognitive_accounts_metrics_advisor_aad_client_id" {
  description = "List of metrics_advisor_aad_client_id values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.metrics_advisor_aad_client_id]
}
output "cognitive_accounts_metrics_advisor_aad_tenant_id" {
  description = "List of metrics_advisor_aad_tenant_id values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.metrics_advisor_aad_tenant_id]
}
output "cognitive_accounts_metrics_advisor_super_user_name" {
  description = "List of metrics_advisor_super_user_name values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.metrics_advisor_super_user_name]
}
output "cognitive_accounts_metrics_advisor_website_name" {
  description = "List of metrics_advisor_website_name values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.metrics_advisor_website_name]
}
output "cognitive_accounts_name" {
  description = "List of name values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.name]
}
output "cognitive_accounts_network_acls" {
  description = "List of network_acls values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.network_acls]
}
output "cognitive_accounts_network_injection" {
  description = "List of network_injection values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.network_injection]
}
output "cognitive_accounts_outbound_network_access_restricted" {
  description = "List of outbound_network_access_restricted values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.outbound_network_access_restricted]
}
output "cognitive_accounts_primary_access_key" {
  description = "List of primary_access_key values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.primary_access_key]
  sensitive   = true
}
output "cognitive_accounts_project_management_enabled" {
  description = "List of project_management_enabled values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.project_management_enabled]
}
output "cognitive_accounts_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.public_network_access_enabled]
}
output "cognitive_accounts_qna_runtime_endpoint" {
  description = "List of qna_runtime_endpoint values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.qna_runtime_endpoint]
}
output "cognitive_accounts_resource_group_name" {
  description = "List of resource_group_name values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.resource_group_name]
}
output "cognitive_accounts_secondary_access_key" {
  description = "List of secondary_access_key values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.secondary_access_key]
  sensitive   = true
}
output "cognitive_accounts_sku_name" {
  description = "List of sku_name values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.sku_name]
}
output "cognitive_accounts_storage" {
  description = "List of storage values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.storage]
}
output "cognitive_accounts_tags" {
  description = "List of tags values across all cognitive_accounts"
  value       = [for k, v in module.cognitive_accounts.cognitive_accounts : v.tags]
}


# --- azurerm_cognitive_account_customer_managed_key ---
output "cognitive_account_customer_managed_keys" {
  description = "All cognitive_account_customer_managed_key resources"
  value       = module.cognitive_account_customer_managed_keys.cognitive_account_customer_managed_keys
}
output "cognitive_account_customer_managed_keys_cognitive_account_id" {
  description = "List of cognitive_account_id values across all cognitive_account_customer_managed_keys"
  value       = [for k, v in module.cognitive_account_customer_managed_keys.cognitive_account_customer_managed_keys : v.cognitive_account_id]
}
output "cognitive_account_customer_managed_keys_identity_client_id" {
  description = "List of identity_client_id values across all cognitive_account_customer_managed_keys"
  value       = [for k, v in module.cognitive_account_customer_managed_keys.cognitive_account_customer_managed_keys : v.identity_client_id]
}
output "cognitive_account_customer_managed_keys_key_vault_key_id" {
  description = "List of key_vault_key_id values across all cognitive_account_customer_managed_keys"
  value       = [for k, v in module.cognitive_account_customer_managed_keys.cognitive_account_customer_managed_keys : v.key_vault_key_id]
}


# --- azurerm_cognitive_account_project ---
output "cognitive_account_projects" {
  description = "All cognitive_account_project resources"
  value       = module.cognitive_account_projects.cognitive_account_projects
}
output "cognitive_account_projects_cognitive_account_id" {
  description = "List of cognitive_account_id values across all cognitive_account_projects"
  value       = [for k, v in module.cognitive_account_projects.cognitive_account_projects : v.cognitive_account_id]
}
output "cognitive_account_projects_default" {
  description = "List of default values across all cognitive_account_projects"
  value       = [for k, v in module.cognitive_account_projects.cognitive_account_projects : v.default]
}
output "cognitive_account_projects_description" {
  description = "List of description values across all cognitive_account_projects"
  value       = [for k, v in module.cognitive_account_projects.cognitive_account_projects : v.description]
}
output "cognitive_account_projects_display_name" {
  description = "List of display_name values across all cognitive_account_projects"
  value       = [for k, v in module.cognitive_account_projects.cognitive_account_projects : v.display_name]
}
output "cognitive_account_projects_endpoints" {
  description = "List of endpoints values across all cognitive_account_projects"
  value       = [for k, v in module.cognitive_account_projects.cognitive_account_projects : v.endpoints]
}
output "cognitive_account_projects_identity" {
  description = "List of identity values across all cognitive_account_projects"
  value       = [for k, v in module.cognitive_account_projects.cognitive_account_projects : v.identity]
}
output "cognitive_account_projects_location" {
  description = "List of location values across all cognitive_account_projects"
  value       = [for k, v in module.cognitive_account_projects.cognitive_account_projects : v.location]
}
output "cognitive_account_projects_name" {
  description = "List of name values across all cognitive_account_projects"
  value       = [for k, v in module.cognitive_account_projects.cognitive_account_projects : v.name]
}
output "cognitive_account_projects_tags" {
  description = "List of tags values across all cognitive_account_projects"
  value       = [for k, v in module.cognitive_account_projects.cognitive_account_projects : v.tags]
}


# --- azurerm_cognitive_account_rai_blocklist ---
output "cognitive_account_rai_blocklists" {
  description = "All cognitive_account_rai_blocklist resources"
  value       = module.cognitive_account_rai_blocklists.cognitive_account_rai_blocklists
}
output "cognitive_account_rai_blocklists_cognitive_account_id" {
  description = "List of cognitive_account_id values across all cognitive_account_rai_blocklists"
  value       = [for k, v in module.cognitive_account_rai_blocklists.cognitive_account_rai_blocklists : v.cognitive_account_id]
}
output "cognitive_account_rai_blocklists_description" {
  description = "List of description values across all cognitive_account_rai_blocklists"
  value       = [for k, v in module.cognitive_account_rai_blocklists.cognitive_account_rai_blocklists : v.description]
}
output "cognitive_account_rai_blocklists_name" {
  description = "List of name values across all cognitive_account_rai_blocklists"
  value       = [for k, v in module.cognitive_account_rai_blocklists.cognitive_account_rai_blocklists : v.name]
}
output "cognitive_account_rai_blocklists_tags" {
  description = "List of tags values across all cognitive_account_rai_blocklists"
  value       = [for k, v in module.cognitive_account_rai_blocklists.cognitive_account_rai_blocklists : v.tags]
}


# --- azurerm_cognitive_account_rai_policy ---
output "cognitive_account_rai_policies" {
  description = "All cognitive_account_rai_policy resources"
  value       = module.cognitive_account_rai_policies.cognitive_account_rai_policies
}
output "cognitive_account_rai_policies_base_policy_name" {
  description = "List of base_policy_name values across all cognitive_account_rai_policies"
  value       = [for k, v in module.cognitive_account_rai_policies.cognitive_account_rai_policies : v.base_policy_name]
}
output "cognitive_account_rai_policies_cognitive_account_id" {
  description = "List of cognitive_account_id values across all cognitive_account_rai_policies"
  value       = [for k, v in module.cognitive_account_rai_policies.cognitive_account_rai_policies : v.cognitive_account_id]
}
output "cognitive_account_rai_policies_content_filter" {
  description = "List of content_filter values across all cognitive_account_rai_policies"
  value       = [for k, v in module.cognitive_account_rai_policies.cognitive_account_rai_policies : v.content_filter]
}
output "cognitive_account_rai_policies_mode" {
  description = "List of mode values across all cognitive_account_rai_policies"
  value       = [for k, v in module.cognitive_account_rai_policies.cognitive_account_rai_policies : v.mode]
}
output "cognitive_account_rai_policies_name" {
  description = "List of name values across all cognitive_account_rai_policies"
  value       = [for k, v in module.cognitive_account_rai_policies.cognitive_account_rai_policies : v.name]
}
output "cognitive_account_rai_policies_tags" {
  description = "List of tags values across all cognitive_account_rai_policies"
  value       = [for k, v in module.cognitive_account_rai_policies.cognitive_account_rai_policies : v.tags]
}


# --- azurerm_cognitive_deployment ---
output "cognitive_deployments" {
  description = "All cognitive_deployment resources"
  value       = module.cognitive_deployments.cognitive_deployments
}
output "cognitive_deployments_cognitive_account_id" {
  description = "List of cognitive_account_id values across all cognitive_deployments"
  value       = [for k, v in module.cognitive_deployments.cognitive_deployments : v.cognitive_account_id]
}
output "cognitive_deployments_dynamic_throttling_enabled" {
  description = "List of dynamic_throttling_enabled values across all cognitive_deployments"
  value       = [for k, v in module.cognitive_deployments.cognitive_deployments : v.dynamic_throttling_enabled]
}
output "cognitive_deployments_model" {
  description = "List of model values across all cognitive_deployments"
  value       = [for k, v in module.cognitive_deployments.cognitive_deployments : v.model]
}
output "cognitive_deployments_name" {
  description = "List of name values across all cognitive_deployments"
  value       = [for k, v in module.cognitive_deployments.cognitive_deployments : v.name]
}
output "cognitive_deployments_rai_policy_name" {
  description = "List of rai_policy_name values across all cognitive_deployments"
  value       = [for k, v in module.cognitive_deployments.cognitive_deployments : v.rai_policy_name]
}
output "cognitive_deployments_sku" {
  description = "List of sku values across all cognitive_deployments"
  value       = [for k, v in module.cognitive_deployments.cognitive_deployments : v.sku]
}
output "cognitive_deployments_version_upgrade_option" {
  description = "List of version_upgrade_option values across all cognitive_deployments"
  value       = [for k, v in module.cognitive_deployments.cognitive_deployments : v.version_upgrade_option]
}



