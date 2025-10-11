output "key_name" {
  description = "AWS key pair name"
  value       = aws_key_pair.this.key_name
}

output "pem_file_path" {
  description = "Local path of the downloaded PEM file"
  value       = local_file.pem_file.filename
}

output "private_key" {
  description = "Private key PEM contents"
  value       = aws_key_pair.this.key_material
  sensitive   = true
}
