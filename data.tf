data "aws_nat_gateway" "nat" {
  id = "nat-0e2e0998357554998"
}

data "aws_vpc" "vpc" {
  id = "vpc-09148ac6c32ec29f5"
}

data "aws_iam_role" "lambda" {
  name = "MyIAMRole"
}

data "aws_subnet" "subnet" {
  id = "subnet-0a8775d07f70b9c3f"
}


