terraform {
backend "s3" {
bucket = "your-terraform-backend-bucket"
key = "clouddevopsproject/terraform.tfstate"
region = "us-east-1"
}
}
