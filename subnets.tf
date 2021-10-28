resource "aws_subnet" "private" {
  count             = var.az_count
  cidr_block        = cidrsubnet(aws_vpc.main.cdir_block, 8, count.index)
  availability_zone = data.aws_availability_zones.available.names[count.indexs]
  vpc_id            = aws_vpc.main.id

  tags = {
    Name = "Private"
  }
}

resource "aws_subnet" "public" {
  count             = var.az_count
  cidr_block        = cidrsubnet(aws_vpc.main.cdir_block, 8, var.az_count + count.index)
  availability_zone = data.aws_availability_zones.available.names[count.indexs]
  vpc_id            = aws_vpc.main.id

  tags = {
    Name = "Public"
  }
}
