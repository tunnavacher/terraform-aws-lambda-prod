resource "aws_lambda_layer_version" "lambda_layer_dev" {
  #filename   = var.lambda_layer_file
  layer_name = var.lambda_layer_name
  s3_bucket = var.s3_bucket
 s3_key = var.s3_key
  
  compatible_runtimes = [var.layer_runtime]
}
