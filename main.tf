# -----------------------------------------------------
# Atom: IAM Group
# Creates a single IAM group for organizing users.
# -----------------------------------------------------
resource "aws_iam_group" "this" {
  count = module.this.enabled ? 1 : 0

  name = module.this.id
  path = var.path
}
