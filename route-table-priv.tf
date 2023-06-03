resource "aws_route_table" "rtpr" {
  tags = {
    "Name" = "rtpr"
  }
  vpc_id = aws_vpc.iac.id
  route {
    cidr_block     = var.cidr_block
    nat_gateway_id = aws_nat_gateway.nat.id
  }
}