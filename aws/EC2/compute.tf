resource "aws_security_group" "web" {
  name = "web"

  ingress {
    from_port   = local.ssh_port
    to_port     = local.ssh_port
    protocol    = "tcp"
    cidr_blocks = [local.anywhere]
  }

  ingress {
    from_port   = local.http_port
    to_port     = local.http_port
    protocol    = "tcp"
    cidr_blocks = [local.anywhere]
  }
  vpc_id = local.vpc
  tags = {
    Name = "web"
  }

  depends_on = [
    aws_subnet.app1
  ]
}

data "aws_ami_ids" "ubuntu" {
  owners = ["099720109477"]

  filter {
    name   = "description"
    values = ["Canonical, Ubuntu, 22.04 LTS, amd64 jammy image build on 2023-02-08"]
  }
  filter {
    name   = "is-public"
    values = ["true"]
  }
}

data "aws_subnet" "web" {
  vpc_id = local.vpc
  filter {
    name   = "tag:Name"
    values = [var.vpc_info.web_ec2_subnet]
  }
    #depends_on = [
    #  aws.subnet.app1
    #]
}
