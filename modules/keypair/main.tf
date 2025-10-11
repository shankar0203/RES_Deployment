# Module to Create Keypair
resource "aws_key_pair" "this" {
  key_name   = var.key_name
  key_type   = "rsa"
}

# Save the private key PEM to a local file
resource "local_file" "pem_file" {
  content  = aws_key_pair.this.key_material
  filename = "${path.module}/${var.key_name}.pem"

  # Restrict permissions for security
  file_permission      = "0400"
  directory_permission = "0700"
}