resource "aws_route" "source-route-private" {
  provider                  = aws.source
  route_table_id            = var.source-route_table-private-id
  destination_cidr_block    = data.aws_vpc.peer.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering_connection.id
}

resource "aws_route" "source-route-restricted" {
  provider                  = aws.source
  route_table_id            = var.source-route_table-restricted-id
  destination_cidr_block    = data.aws_vpc.peer.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering_connection.id
}
resource "aws_route" "source-route-public" {
  provider                  = aws.source
  route_table_id            = var.source-route_table-public-id
  destination_cidr_block    = data.aws_vpc.peer.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering_connection.id
}
resource "aws_route" "peer-route-private" {
  provider                  = aws.peer
  route_table_id            = var.peer-route_table-private-id
  destination_cidr_block    = data.aws_vpc.source.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering_connection.id
}
resource "aws_route" "peer-route-restricted" {
  provider                  = aws.peer
  route_table_id            = var.peer-route_table-restricted-id
  destination_cidr_block    = data.aws_vpc.source.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering_connection.id
}
resource "aws_route" "peer-route-public" {
  provider                  = aws.peer
  route_table_id            = var.peer-route_table-public-id
  destination_cidr_block    = data.aws_vpc.source.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering_connection.id
}
