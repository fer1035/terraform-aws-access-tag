resource "aws_iam_user" "tag_user" {
  name = var.project_name
  path = "/ni_projects/"

  tags = {
    project = var.project_name
  }
}

resource "aws_iam_access_key" "tag_access_key" {
  user   = aws_iam_user.tag_user.name
  status = var.access_key_status
}

resource "aws_iam_user_policy" "tag_user_policy" {
  name = "${var.project_name}_tag_policy"
  user = aws_iam_user.tag_user.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Deny"
        Action   = "*"
        Resource = "*"

        Condition = {
          "ForAllValues:StringNotLile" = {
            "aws:PrincipalTag/project" = "${var.project_name}"
            "aws:RequestTag/project"   = "${var.project_name}"
            "aws:ResourceTag/project"  = "${var.project_name}"
          }
        }
      }
    ]
  })
}
