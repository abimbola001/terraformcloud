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

