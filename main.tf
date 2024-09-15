provider "aws" {
  region = "us-east-1"  # Replace with your desired AWS region
}
resource "aws_s3_bucket" "image_bucket" {
  bucket = "petstore-images-bucket"
  # Other configuration options...
}

resource "aws_s3_bucket_policy" "image_bucket_policy" {
  bucket = aws_s3_bucket.image_bucket.id
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = "*",
        Action = [
          "s3:GetObject",
          "s3:PutObject"
        ],
        Resource = "${aws_s3_bucket.image_bucket.arn}/*"
      }
    ]
  })
}
