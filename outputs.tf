#------------------------------------------------------------------------------
# Source - AWS Info
output "source-region" {
  description = "[Source] Region"
  value       = local.source-region
}
output "source-region-abbr" {
  description = "[Source] Region Abbreviation"
  value       = local.source-region-abbr
}
output "source-account_id" {
  description = "[Source] Account ID"
  value       = local.source-account_id
}

#------------------------------------------------------------------------------
# Peer - AWS Info
output "peer-region" {
  description = "[Peer] Region"
  value       = local.peer-region
}
output "peer-region-abbr" {
  description = "[Peer] Region Abbreviation"
  value       = local.peer-region-abbr
}
output "peer-account_id" {
  description = "[Peer] Account ID"
  value       = local.peer-account_id
}
