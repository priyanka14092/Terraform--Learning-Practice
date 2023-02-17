# Backend Configuration

terraform {
  backend "s3" {
    bucket = "priyanka-backend-bucket"
    key    = "terraState.tfstate"
    region = "us-east-1"
    dynamodb_table = "priyanka-dynamo-table"
  }
}