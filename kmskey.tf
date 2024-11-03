# resource "aws_kms_key" "awskey" {
#   description             = "An example symmetric encryption KMS key"

# }

# resource "aws_kms_key_policy" "awskey" {
#   key_id = aws_kms_key.foolie.key
#   policy = jsonencode({
#     Version = "2012-10-17"
#     Id      = "key-default-1"
#     Statement = [
#       {
#         Sid    = "Enable IAM User Permissions"
#         Effect = "Allow"
#         Principal = {
#           AWS = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"
#         },
#         Action   = "kms:*"
#         Resource = "*"
#       }
#     ]
#   })
# }