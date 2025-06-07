resource "aws_mng_role" "eks_mng_role" {
  name = "${var.project_name}-mng-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-mng-role"
    }
  )
}

resource "aws_iam_user_policy_attachment" "eks_mng_role_attachment_worker" {
  user       = aws_iam_user.eks_mng_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}
resource "aws_iam_user_policy_attachment" "eks_mng_role_attachment_ecr" {
  user       = aws_iam_user.eks_mng_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}

resource "aws_iam_user_policy_attachment" "eks_mng_role_attachment_cni" {
  user       = aws_iam_user.eks_mng_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
}