resource "aws_ecr_repository" "codebrewery" {
  name                 = var.repository_name
  image_tag_mutability = "MUTABLE" 
  image_scanning_configuration {
    scan_on_push = true
  }
  tags = {
    Environment = var.environment
    Project     = "CodeBrewery"
  }
}
