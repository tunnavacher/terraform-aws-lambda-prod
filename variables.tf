variable "region_name" {
  type = string
  default = "us-east-1"
}

variable "function_name" {
  type = string
  default = "devlambdatest"
}

variable "lambda_handler" {
  type = string
  default = "lambda_function.lambda_handler"
}

variable "runtime" {
  type = string
  default = "python3.8"
}

variable "lambda_execution_role" {
  type = string
  default = ""
}

variable "s3_bucket" {
 type = string
  default = ""
}

variable "s3_key" {
 type = string
  default = ""
}

variable "lambda_layer_name" {
  type = string
  default = "layer_test_1"
}

variable "layer_runtime" {
  type = string
  default = "python3.8"
}

variable "compatible_runtimes" {
  type = string
  default = "python3.8"
}

variable "bucketname" {
  type = string
  default = ""
}

variable "event_type" {
  type = string
  default = ""
}

#variable "prefix" {
  #type = string
  #default = ""
#}

#variable "suffix" {
#  type = string
  #default = ""
#}

variable "statement_id1" {
  type = string
  default = "AllowS3Invoke"
}

variable "action1" {
  type = string
  default = "lambda:InvokeFunction"
}

variable "principle1" {
  type = string
  default = "s3.amazonaws.com"
}

variable "source_arn" {
  type = string
  default = "s3 bucket arn"
}

variable "cwrulename" {
 type = string
  default = "lambda_trigger_every-fifteen-minutes"
}

variable "Schedule" {
 type = string
  default = "rate(15 minutes)"
}

variable "target_id" {
 type = string
  default = "devlambdatest"
}

variable "statement_id2" {
 type = string
  default = "AllowExecutionFromCloudWatch"
}

variable "action2" {
 type = string
  default = "lambda:InvokeFunction"
}

variable "principle2" {
 type = string
  default = "events.amazonaws.com"
}
