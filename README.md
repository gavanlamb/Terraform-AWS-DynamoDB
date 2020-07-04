# Terraform AWS DynamoDB
Create a pay per request dynamo db table

## Variables
### Input
| Variables                     | Description                                                           | Default        |
|:------------------------------|:----------------------------------------------------------------------|:---------------|
| company                       | Company name                                                          |                |
| environment                   | Environment name                                                      |                |
| name                          | Name                                                                  |                |
| service                       | Service name                                                          |                |
| table_name                    | Name of the table                                                     |                |
| hash_key_name                 | Name of the hash key                                                  |                |
| hash_key_type                 | Type of the hash key                                                  | S              |
| range_key_name                | Name of the range key                                                 |                |
| range_key_type                | Type of the range key                                                 | S              |
| attributes                    | List of attributes exclusive of hash and range key { name:"" type:""} | []             |
| local_secondary_indexes       | List of LSIs { name:"" range_key:"" projection_type:"" }              | []             |
| global_secondary_indexes      | List of LSIs { name:"" range_key:"" projection_type:"" }              | []             |
| ttl_attribute_name            | Time to live attribute name                                           | ExpirationTime |
| ttl_active                    | Flag to indicate if the time to live attribute is active              |                |
| point_in_time_recovery_enable | Enable recover                                                        | false          |
| tags                          | Tags for the certificate resources                                    |                |

### Output
| Variables  | Description            |
|:-----------|:-----------------------|
| table_arn  | ARN of dynamodb table  |
| table_name | Name of dynamodb table |

## How to
Specify the module source and the provider information.

### Sample
```
provider "aws" {
    region = ""
    shared_credentials_file = ""
}

module "dynamodb-pay-per-request" {
    source = "github.com/Haplo-tech/Terraform.Module.AWS.DynamoDB.PayPerRequest"
    company = ""
    environment = ""
    name = ""
    service = ""
    table_name = ""
    hash_key_name = ""
    hash_key_type = ""
    range_key_name = ""
    range_key_type = ""
    attributes = []
    local_secondary_indexes =[]
    ttl_attribute_name = ""
    ttl_active = true
    point_in_time_recovery_enable = true
    tags = {}
}
```
