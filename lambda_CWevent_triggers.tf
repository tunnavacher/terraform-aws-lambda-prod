# Adding Cloudwatch events as trigger to my lambda and giving the permissions
##################
resource "aws_cloudwatch_event_rule" "lambda_trigger_every_five_minutes" {
    name = var.cwrulename
    description = "Fires every fifteen minutes"
    schedule_expression = var.Schedule
}

resource "aws_cloudwatch_event_target" "lambda_trigger_every_five_minutes" {
    rule = "${aws_cloudwatch_event_rule.lambda_trigger_every_five_minutes.name}"
    target_id = var.target_id
    arn = aws_lambda_function.dev_lambda.arn
}

resource "aws_lambda_permission" "allow_cloudwatch_to_call_test_lambda" {
    statement_id = var.statement_id2
    action = var.action2
    function_name = aws_lambda_function.dev_lambda.function_name
    principal = var.principle2
    source_arn = "${aws_cloudwatch_event_rule.lambda_trigger_every_five_minutes.arn}"
}
