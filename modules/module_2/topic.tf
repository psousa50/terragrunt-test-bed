resource "aws_sns_topic" "test-topic" {
  name              = "${var.topic_name}-${var.other_var}"
}