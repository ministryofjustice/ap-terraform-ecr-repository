variable "name" {
  type        = string 
  description = "Name of the ECR repository."
}

variable "pull_arns" {
  type        = list(string)
  description = "List of IAM ARNs that can pull images."
}

variable "push_arns" {
  type        = list(string)
  description = "List of IAM ARNs that can push and pull images and tags."
}

variable "max_any_image_count" {
  default     = 100
  type        = number
  description = "Maximum number of images that you want to retain in repository."
}

variable "tags" {
  description = "A map of tags to apply to all resources"
  type        = map(string)
  default     = {}
}
