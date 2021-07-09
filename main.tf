# Lambda function to start the crawler after S3 PUT Events

resource "aws_lambda_function" "CrawlerStart_lambda" {
  function_name = var.function_name1
  description   = "My lambda function test in dev environment for S3 Events"
  handler       = var.lambda_handler
  runtime       = var.runtime
  role = var.lambda_execution_role
 s3_bucket = var.s3_bucket
 s3_key = var.s3_key
layers = [aws_lambda_layer_version.lambda_layer_test.arn]
}

# Lambda function to start the Glue Job once the Crawler run successfully

resource "aws_lambda_function" "GlueJobStart_lambda" {
  function_name = var.function_name2
  description   = "My awesome lambda function"
  handler       = var.lambda_handler
  runtime       = var.runtime
  role = var.lambda_execution_role
  s3_bucket = var.s3_bucket
s3_key = var.s3_key1
}
