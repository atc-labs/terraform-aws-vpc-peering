locals {
  source-region      = data.aws_region.source.name
  source-region-abbr = var.lookup-region_abbr["${data.aws_region.source.name}"]
  source-account_id  = data.aws_caller_identity.source.account_id
  peer-region        = data.aws_region.peer.name
  peer-region-abbr   = var.lookup-region_abbr["${data.aws_region.peer.name}"]
  peer-account_id    = data.aws_caller_identity.peer.account_id
}
