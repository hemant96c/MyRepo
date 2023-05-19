data "aws_nat_gateway" "nat" {
  id = "nat-01a52544fe012810b"
}

data "aws_vpc" "vpc" {
  id = "vpc-008fd7305e6d15c8e"
}

data "aws_iam_role" "lambda" {
  name = "MyIAMRole"
}

data "aws_subnet" "subnet" {
  id = "subnet-08b9750b7f967984a"
}


