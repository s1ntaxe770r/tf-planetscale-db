# Provisioning a Planetscale Terraform provider


### Clone this repo 
`git clone https://github.com/s1ntaxe770r/tf-planetscale-db.git && cd tf-planetscale-db`

### Initialize terraform 
`terraform init`

### Populate terraform.tfvars

`mv terraform.tfvars.example terraform.tfvars`

```terraform
access_token=secretacesstoken
organization=somerandomorg
db_name=heyitworks
```

### Create Plan
`terraform plan -out=plan`

### Apply 
```terraform
terraform apply plan
```

After a few seconds you should have a planetscale datbase up and running. If you have the planetscale CLI intstalled you can verify by running 

```bash
pscale database list --format json
```

```json
[
  {
    "name": "heyitworks",
    "notes": "",
    "region": {
      "slug": "us-east",
      "display_name": "US East",
      "location": "Northern Virginia",
      "enabled": true
    },
    "created_at": "2021-10-10T12:27:56.132Z",
    "updated_at": "2021-10-10T12:27:56.222Z"
  }
]

```
