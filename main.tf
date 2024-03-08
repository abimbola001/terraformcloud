terraform {
     backend "remote" {
    # The name of your Terraform Cloud organization.
       organization = "netcool"
       # The name of the Terraform Cloud workspace to store Terraform state files in.
        workspaces {
         name = "common"
        }
      }
    }

#     # An example resource that does nothing.
    resource "null_resource" "example" {
      triggers = {
        value = "A example resource that does nothing!"
      }
    }





provider "random" {
  version = "~> 3.1"
}

resource "random_pet" "name" {
  keepers = {
    # Updating this value causes Terraform to generate a new name
    uuid = "1"
  }
  length = 10
  prefix = "cloud"
  separator = "-"
}


output "pet_name" {
  description = "The random pet name"
  value       = random_pet.name.id
}

