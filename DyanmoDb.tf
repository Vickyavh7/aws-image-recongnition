resource "aws_dynamodb_table" "image_metadata" {
  name           = "ImageMetadata"
  hash_key       = "ImageID"
  billing_mode   = "PAY_PER_REQUEST"

  attribute {
    name = "ImageID"
    type = "S"
  }

  attribute {
    name = "Labels"
    type = "S"
  }

  global_secondary_index {
    name            = "LabelsIndex"
    hash_key        = "Labels"
    projection_type = "ALL"
  }
}
