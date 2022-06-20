terraform {
  required_version = ">= 0.15"
  required_providers {
    local ={
        source = "hashicorp/local"
        version = "~>2.0"
    }
  }
}

resource "local_file" "abc" {
    filename = var.filename
    content = var.content
}

resource "random_pet" "mypetname" {
  prefix = var.prefix
  length = var.length
  separator = var.separator
}
