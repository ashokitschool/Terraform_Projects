output "ec2_vm_info_complete_info" {
    value = aws_instance.ec2_vm
}

output "ec2_vm_public_ip" {
    value = aws_instance.ec2_vm.public_ip
}
