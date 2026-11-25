resource "aws_subnet" "public-subnet-1" {
    vpc_id = aws_vpc.dev.id
    cidr_block = "10.50.1.0/24"
    availability_zone = "us-east-2a"
    map_public_ip_on_launch = true
    tags = {
        Name = "Hari-public-subnet-1"
    }  
}

resource "aws_subnet" "public-subnet-2" {
    vpc_id = aws_vpc.dev.id
    cidr_block = "10.50.2.0/24"
    availability_zone = "us-east-2b"
    map_public_ip_on_launch = true
    tags = {
        Name = "Hari-public-subnet-2"
    }  
}

resource "aws_subnet" "public-subnet-3" {
    vpc_id = aws_vpc.dev.id
    cidr_block = "10.50.3.0/24"
    availability_zone = "us-east-2c"
    map_public_ip_on_launch = true
    tags = {
        Name = "Hari-public-subnet-3"
    }  
}