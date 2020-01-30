resource "aws_vpc_peering_connection_accepter" "vpc_peering_connection_accepter" {
  provider                  = aws.peer
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering_connection.id
  auto_accept               = true
  tags = merge(
    local.required_tags,
    map(
      "Name", "${data.aws_vpc.source.tags["Name"]} -> ${data.aws_vpc.peer.tags["Name"]}"
    )
  )
}
