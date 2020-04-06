# security group
resource "aws_security_group" "public" {
  name        = "cfv_public_sg"
  description = "Used for management interface"
  vpc_id      = aws_vpc.cfv_test_vpc.id
  # vpc_id        = data.aws_vpc.cfv_vpc.id

  # ssh access
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.public_ip_access_list
  }

  # CyberFlood & Avalanche instance ports 1415 and 1416
  ingress {
    from_port   = 1415
    to_port     = 1416
    protocol    = "tcp"
    cidr_blocks = var.public_ip_access_list
  }

  # outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name  = "cfv_public_sg"
    Usage = var.common_tag
  }
}

resource "aws_security_group" "internal" {
  name        = "cfv_internal_sg"
  description = "Used for second and third test interfaces"
  vpc_id      = aws_vpc.cfv_test_vpc.id
  # vpc_id        = data.aws_vpc.cfv_vpc.id

  # accept all traffic from internal traffic
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name  = "cfv_internal_sg"
    Usage = var.common_tag
  }
}

