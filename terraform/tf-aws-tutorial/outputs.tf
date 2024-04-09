output "kube_control_instance_id" {
  description = "kube control id"
  value       = aws_instance.kube-control.id
}

#output "kube_control_instance_public_ip" {
#  description = "kube control public ip"
#  value       = aws_instance.kube-control.public_ip
#}

output "kube_control_instance_public_dns" {
  description = "kube control public hostname"
  value       = aws_instance.kube-control.public_dns
}

output "kube_worker1_instance_id" {
  description = "kube worker 1 id"
  value       = aws_instance.kube-worker-1.id
}

output "kube_worker1_instance_public_dns" {
  description = "kube worker 1 public dns"
  value       = aws_instance.kube-worker-1.public_dns
}

output "kube_worker2_instance_id" {
  description = "kube worker 2 id"
  value       = aws_instance.kube-worker-2.id
}

output "kube_worker2_instance_public_dns" {
  description = "kube worker 2 public ip"
  value       = aws_instance.kube-worker-2.public_dns
}

output "kube_worker3_instance_id" {
  description = "kube worker 3 id"
  value       = aws_instance.kube-worker-3.id
}

output "kube_worker3_instance_public_dns" {
  description = "kube worker 3 public ip"
  value       = aws_instance.kube-worker-3.public_dns
}
