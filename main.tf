# Lambda function_name
resource "aws_lambda_function" "dev_lambda" {
  function_name = var.function_name
  description   = "My awesome lambda function test in dev environment"
  handler       = var.lambda_handler
  runtime       = var.runtime
  role = var.lambda_execution_role
 s3_bucket = var.s3_bucket
 s3_key = var.s3_key
layers = [aws_lambda_layer_version.lambda_layer_dev.arn]
}
