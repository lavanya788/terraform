output "instance_public_ip" {
    value = aws_instance.dev.public_ip
    sensitive = true
}