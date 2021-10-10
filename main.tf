terraform {
  required_providers {
    planetscale = {
      source = "s1ntaxe770r/planetscale"
      version = "0.1.1"
    }
  }
}

provider "planetscale" {
   access_token = var.access_token
}


resource "planetscale_database" "db" { 
	organization = var.organization
	name = var.db_name
}

output "database" {
  value = planetscale_database.db.database
}
