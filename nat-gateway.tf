resource "aws_nat_gateway" "nat" {
  tags = {
    "Name" = "nat"
  }
  subnet_id     = aws_subnet.pub.id
  allocation_id = aws_eip.eip.id
}