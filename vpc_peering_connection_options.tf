resource "aws_vpc_peering_connection_options" "vpc_peering_connection_options-requester" {
  provider                  = aws.source
  vpc_peering_connection_id = aws_vpc_peering_connection_accepter.vpc_peering_connection_accepter.id

  requester {
    allow_remote_vpc_dns_resolution  = true
    allow_classic_link_to_remote_vpc = false
    allow_vpc_to_remote_classic_link = false
  }
}

resource "aws_vpc_peering_connection_options" "vpc_peering_connection_options-accepter" {
  provider                  = aws.peer
  vpc_peering_connection_id = aws_vpc_peering_connection_accepter.vpc_peering_connection_accepter.id

  accepter {
    allow_remote_vpc_dns_resolution  = true
    allow_classic_link_to_remote_vpc = false
    allow_vpc_to_remote_classic_link = false
  }
}
