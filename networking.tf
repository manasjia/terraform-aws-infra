resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr_block
    tags = {
        Name = "${var.project_name}-vpc"
    }
}

resource "aws_subnet" "public_subnet" { 
    vpc_id            = aws_vpc.main.id
    cidr_block        = var.subnet_cidr_block
    map_public_ip_on_launch = true
    tags = {
        Name = "${var.project_name}-public-subnet"
    }
  
}
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.main.id
    tags = {
        Name = "${var.project_name}-igw"
    }
  
}
resource "aws_route_table" "public_rt" {
    vpc_id = aws_vpc.main.id
    tags = {
        Name = "${var.project_name}-public-rt"
    }
}
resource "aws_route" "public_internet_access" {
    route_table_id         = aws_route_table.public_rt.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id             = aws_internet_gateway.igw.id
  
}
resource "aws_route_table_association" "public_rt_assoc" {
    subnet_id      = aws_subnet.public_subnet.id
    route_table_id = aws_route_table.public_rt.id
  
}