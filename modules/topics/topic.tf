resource "aws_sns_topic" "test-topic" {
  name              = "test-topic-${var.aws_account_id}-${var.aws_region}-${var.environment}"
}