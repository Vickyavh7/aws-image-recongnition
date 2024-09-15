resource "aws_s3_bucket" "s3_recon" {
  bucket = "petstore-images-bucket"
  
  tags = {
    Name = "petstore-images-bucket"
  }
}

