## Prepping Account

This Terraform code will prep the naming convention in the company.

There are a bunch of things you need to replace and add to make this work:

#### Terraform:
1. Update the main.tf file with required values of domain,service_name,envinronment
2. Terraform init command to be used
3. terraform apply command to be used to view the output

#### Examples:
| Inputs                    | Output      
| -------------             | ------------- 
| `domain=reporting`        | pbp-reporting-4f6hyu7h (random assigned number         
| `domain=data
service_name=foobar`        | pbp-data-foobar         