resource "aws_security_group" "allow_http" {
  vpc_id = var.vpc_id

 ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "this" {
  ami           = "ami-0ae8f15ae66fe8cda" # AMI Gratuita
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [aws_security_group.allow_http.id]

  user_data = <<-EOF
    #!/bin/bash
    # Atualizar pacotes
    yum update -y

    # Instalar Apache
    yum install -y httpd

    # Iniciar e habilitar Apache
    systemctl start httpd
    systemctl enable httpd

    # Instalar PHP e extensões necessárias
    yum install -y php php-mysql

    # Instalar o repositório EPEL para obter o pacote de wget
    yum install -y epel-release

    # Instalar wget
    yum install -y wget

    # Baixar e descompactar o WordPress
    wget https://wordpress.org/latest.tar.gz
    tar -xzf latest.tar.gz -C /var/www/html --strip-components=1

    # Ajustar permissões
    chown -R apache:apache /var/www/html
    chmod -R 755 /var/www/html

    # Reiniciar Apache
    systemctl restart httpd
  EOF
}

