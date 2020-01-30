resource "aws_vpc_peering_connection" "vpc_peering_connection" {
  provider      = aws.source
  peer_owner_id = data.aws_caller_identity.peer.account_id
  vpc_id        = var.source-vpc-id
  peer_vpc_id   = var.peer-vpc-id
  peer_region   = data.aws_region.peer.name
  tags = merge(
    local.required_tags,
    map(
      "Name", "${data.aws_vpc.source.tags["Name"]} -> ${data.aws_vpc.peer.tags["Name"]}"
    )
  )
}
