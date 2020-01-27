
resource "aws_spot_instance_request" "vapor_instance" {
  ami           = var.ami_id
  spot_price    = var.initial_spot_price
  instance_type = var.instance_type

  tags = {
    "Name"       = "${var.project_name}-spot-instance",
    "Environment" = var.environment
  }
}