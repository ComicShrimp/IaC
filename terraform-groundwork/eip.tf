resource "aws_eip" "gw" {
  count = var.az_count
  vpc   = true

  tags = {
    Environment = "learning"
  }
}
