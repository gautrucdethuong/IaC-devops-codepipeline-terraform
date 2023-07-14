# module "dynamodb_table" {
#   source         = "terraform-aws-modules/dynamodb-table/aws"
#   version        = "3.3.0"
#   name           = "terraform-state-lock-dynamo"
#   hash_key       = "LockID"
#   read_capacity  = 20
#   write_capacity = 20

#   attributes = [
#     {
#       name = "LockID"
#       type = "S"
#     }
#   ]
#   tags = local.common_tags
# }
