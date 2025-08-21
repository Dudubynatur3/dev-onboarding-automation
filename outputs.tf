output "public_ip" {
  value = aws_instance.dev_onboarding.public_ip
}

output "instance_id" {
  value = aws_instance.dev_onboarding.id
}
