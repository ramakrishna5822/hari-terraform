resource "aws_vpc" "dev" {
    cidr_block = "10.50.0.0/16"
    enable_dns_hostnames = true
    tags = {
        Name = "Hari-vpc"
    }
}

resource "aws_internet_gateway" "igw" {
    vpc_id=aws_vpc.dev.id
    tags = {
        Name = "Hari-igw"
    }
}