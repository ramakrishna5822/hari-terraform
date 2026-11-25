resource "aws_route_table" "rt" {
    vpc_id = aws_vpc.dev.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }
    tags = {
        Name = "Hari-rt"
    }
}


resource "aws_route_table_association" "public-subnet-1-association" {
    subnet_id = aws_subnet.public-subnet-1.id
    route_table_id = aws_route_table.rt.id
}

resource "aws_route_table_association" "public-subnet-2-association" {
    subnet_id = aws_subnet.public-subnet-2.id
    route_table_id = aws_route_table.rt.id
}

resource "aws_route_table_association" "public-subnet-3-association" {
    subnet_id = aws_subnet.public-subnet-3.id
    route_table_id = aws_route_table.rt.id
}
