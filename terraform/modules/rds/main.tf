resource "aws_db_subnet_group" "this" {
  name       = "my-db-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "My DB Subnet Group"
  }
}

resource "aws_db_instance" "this" {
  allocated_storage     = 20
  engine                = "mysql"
  instance_class        = "db.t3.micro"
  identifier            = "mydb"
  username              = var.db_username
  password              = var.db_password
  db_subnet_group_name  = aws_db_subnet_group.this.name
  skip_final_snapshot   = true

  tags = {
    Name = "mydb-instance"
  }
}