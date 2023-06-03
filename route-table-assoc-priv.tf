resource "aws_route_table_association" "rtapriv" {
  subnet_id      = aws_subnet.priv.id
  route_table_id = aws_route_table.rtpr.id
}