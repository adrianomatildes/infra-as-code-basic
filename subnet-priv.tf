resource "aws_subnet" "priv" {
  tags = {
    "Name" = "priv"
  }
  vpc_id            = aws_vpc.iac.id
  availability_zone = var.availability_zone_priv
  cidr_block        = var.subnet_cidr_block_priv
}