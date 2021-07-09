# Adding S3 bucket as trigger to my lambda and giving the permissions
##################
resource "aws_s3_bucket_notification" "aws-test-lambda-trigger" {
bucket = var.bucketname
lambda_function {
lambda_function_arn = aws_lambda_function.CrawlerStart_lambda.arn
events              = [var.event_type]
filter_prefix       = var.prefix
filter_suffix       = var.suffix
}
}

resource "aws_lambda_permission" "test" {
statement_id  = var.statement_id1
action        = var.action1
function_name = aws_lambda_function.CrawlerStart_lambda.function_name
principal = var.principle1
source_arn = var.bucketname
}
