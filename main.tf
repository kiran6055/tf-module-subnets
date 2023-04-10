
#resource "aws_route" "internet_gw_route" {
#  count                  = var.internet_gw ? 1 : 0
#  route_table_id         = aws_route_table.route_table.id
#  destination_cidr_block = "0.0.0.0/0"
#  gateway_id             = var.internet_gw_id

#}

# creating internet gateway
#resource "aws_internet_gateway" "igw" {
#  count                  = var.internet_gw ? 1 : 0
#  vpc_id = var.vpc_id

#  tags       = merge(
#    local.common_tags,
#    { Name = "${var.env}-igw" }
#  )
#}

# associating nate gateway to public sunet, in office we need to creat 2 or mutliple nat gateway based on requirment but for lab we created only one
#resource "aws_nat_gateway" "ngw" {
#  count                  = var.nat_gw ? 1 : 0
#  allocation_id = aws_eip.ngw-eip.id
#  subnet_id     = var.public_subnets_ids[0]

#  tags       = merge(
#    local.common_tags,
#    { Name = "${var.env}--ngw" }
#  )

#}





# creating elastice ip
#resource "aws_eip" "ngw-eip" {
#  vpc      = true
#}


