resource "aws_subnet" "subnets" {
    count =3
    vpc_id = aws_vpc.dev.id
    cidr_block=element(var.subnet_cidr_blocks, count.index)
    availability_zone=element(var.azs, count.index)
    map_public_ip_on_launch=true
    tags = {
        Name = "${var.vpc_name}-subnet-${count.index + 1}"
    }   
}