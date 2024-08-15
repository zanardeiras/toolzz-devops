resource "aws_db_instance" "this" {
  allocated_storage    = 20
  engine               = "mysql"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = var.db_username
  password             = var.db_password
  subnet_ids           = var.subnet_ids
  skip_final_snapshot  = true
}