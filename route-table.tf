resource "aws_route_table" "rtpb" {
  tags = {
    "Name" = "rtpb"
  }
  vpc_id = aws_vpc.iac.id
  route {
    cidr_block = var.cidr_block
    gateway_id = aws_internet_gateway.igw.id
  }
}