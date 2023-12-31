
# ------------------------------------------------------------------------------------------------------------
# outputs
# ------------------------------------------------------------------------------------------------------------
output "public_dns" {
  value       = aws_instance.app_server.public_dns
  sensitive   = false
  description = "This is th public dns of the app server"
  depends_on  = []
}

output "public_ip" {
  value       = aws_instance.app_server.public_ip
  sensitive   = false
  description = "This is th public ip of the app server"
  depends_on  = []
}
output "ami_id" {
    value       = data.aws_ami.ubuntu_latest.id
    sensitive   = false
    description = "The ami id used in the instance"
    depends_on  = []
}

output "ami_name" {
    value       = data.aws_ami.ubuntu_latest.name
    sensitive   = false
    description = "The ami name used in the instance"
    depends_on  = []
}
