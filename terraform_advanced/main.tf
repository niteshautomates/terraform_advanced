terraform {
  backend "s3" {
    bucket         = "my-terraform-states-nitesh"   # Replace with your bucket name
    key            = "ec2/${terraform.workspace}/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"              # DynamoDB table for state locking
    encrypt        = true
  }
}


