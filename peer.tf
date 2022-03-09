resource "aws_vpc_peering_connection" "peer-connection" {
  peer_owner_id = data.aws_caller_identity.current.account_id //gets info from data.tf datasource
  peer_vpc_id   = aws_vpc.main.id
  vpc_id        = data.aws_vpc.default.id
  auto_accept   = true       // peering connection requires to accept the connection rather than doing it manually we use auto accept
}