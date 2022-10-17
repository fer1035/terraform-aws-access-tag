resource "aws_iam_role" "tag_role" {
  name                = "${var.project_name}_tag_role"
  managed_policy_arns = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  assume_role_policy  = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "AWS": "arn:aws:iam::${var.account_id}:root"
      },
      "Effect": "Allow",
      "Sid": "LambdaAssumeRole"
    }
  ]
}
EOF
  inline_policy {
    name = "${var.project_name}_tag_policy"

    policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Deny",
      "Action": "*",
      "Resource": "*",
      "Condition": {
        "StringNotLike": {
          "aws:PrincipalTag/project": "${var.project_name}",
          "aws:RequestTag/project": "${var.project_name}",
          "aws:ResourceTag/project": "${var.project_name}"
        }
      }
    }
  ]
}
EOF
  }
}
