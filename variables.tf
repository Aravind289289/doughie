variable "region" {
  default = "us-west-2"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  default     = "ami-0abcdef1234567890"  # Replace with a valid AMI ID
}

variable "instance_type" {
  default = "t2.micro"
}

variable "bucket_name" {
  description = "S3 bucket name for storing static assets"
  default     = "my-unique-bucket-name"
}
