# Changelog
## 1.0.0 - 19/12/2019
* Refactor to take lists for attribute, LSI & GSI
* Rename output.tf to outputs.tf

## 0.1.4 - 16/12/2019
* Add support for point in time recovery
* Add missing variables to sample section 

## 0.1.3 - 16/12/2019
* Update policy to have a wild card ending

## 0.1.2 - 14/12/2019
* Add local secondary index
  * Add local_secondary_range_key variable
  * Add local_secondary_range_key_type variable
  * Add local_secondary_range_name variable
  * Add local_secondary_range_projection_type variable

## 0.1.1 - 14/12/2019
* Add table_name, role_name, resource_type, resource_arn, resource_name variables  
* Add aws_iam_policy and attach policy to role 
* Rename dynamodb-arn to table_arn
* Rename dynamodb-name to table_name

## 0.1.0 - 03/11/2019
* Initial commit