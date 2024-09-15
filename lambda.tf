resource "aws_lambda_function" "image_processing_function" {
  function_name = "ImageProcessingFunction"
  role          = aws_iam_role.lambda_exec_role.arn
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.8"

  filename      = "lambda_function.zip"  # Zip the Lambda code and upload it to S3 or local file system
  source_code_hash = filebase64sha256("lambda_function.zip")

  environment {
    variables = {
      DYNAMODB_TABLE = aws_dynamodb_table.image_metadata.name
    }
  }
}
