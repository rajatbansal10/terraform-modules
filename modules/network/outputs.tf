output "vpc_name" {
  value = var.vpc_name
}

output "public_subnet_id" {
  value = "${aws_subnet.public-subnets.*.id}"
}