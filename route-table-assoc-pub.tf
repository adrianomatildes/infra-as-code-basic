resource "aws_route_table_association" "rtapb" {
  route_table_id = aws_route_table.rtpb.id
  subnet_id      = aws_subnet.pub.id
}