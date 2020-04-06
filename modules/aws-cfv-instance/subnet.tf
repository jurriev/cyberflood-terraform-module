resource "aws_subnet" "cfv_test_net_1" {
  vpc_id = var.vpc_id
  availability_zone       = var.availability_zone
  cidr_block              = var.test_net_1_cidr_block
  
  tags = merge(
    var.tags,
    {
      "Name" = format("%s", var.name)
    },
  )
}

resource "aws_subnet" "cfv_test_net_2" {
  vpc_id = var.vpc_id
  availability_zone       = var.availability_zone
  cidr_block              = var.test_net_2_cidr_block
  
  tags = merge(
    var.tags,
    {
      "Name" = format("%s", var.name)
    },
  )
}


