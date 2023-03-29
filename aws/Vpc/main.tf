resource "aws_vpc" "myvpc" {
  cidr_block = var.vpc
  tags = {
    Name = "myvpc"
  }

}

resource "aws_subnet" "subnets" {
  count             = 6
  cidr_block        = var.subnet_cidrs[count.index]
  availability_zone = "${var.region}${var.subnet_azs[count.index]}"
  vpc_id            = aws_vpc.myvpc.id
  depends_on = [
    aws_vpc.myvpc
  ]
  tags = {
    Name = var.subnet_names[count.index]
  }
}