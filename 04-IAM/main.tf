resource "aws_iam_user" "my_iam_user" {
    name = "${var.iam_user_name}"
}