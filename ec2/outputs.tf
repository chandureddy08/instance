output "public_ip" {
    value = aws_instance.chandu.public_ip  
}
output "private_ip" {
  value = aws_instance.chandu.private_ip
}
output "instance_id" {
    value = aws_instance.chandu.id
}