# EC2 Instances using count
resource "aws_instance" "myInstance" {
  count         = length(var.instanceNames)
  ami           = "ami-05fa00d4c63e32376"
  instance_type = var.instance-Type
  tags = {
    Name    = var.instanceNames[count.index]
    Owner   = "Priyanka"
    Purpose = "Assignment"
  }
}

# S3 Buckets using for_each
resource "aws_s3_bucket" "myBucket" {
  for_each = var.bucketNames
  bucket   = "${each.value}"
  tags = {
    Name    = "${each.value}"
    Owner   = "Priyanka"
    Purpose = "Assignment"
  }
}