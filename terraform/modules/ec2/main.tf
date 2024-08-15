resource "aws_instance" "this" {
  ami           = "ami-0c55b159cbfafe1f0" # Exemplo de AMI, mude conforme necessário
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
}