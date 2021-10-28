# AWS (Amazon Web Services)

## Making internet avaible for EC2 Instances

1. Create a VPC
2. Create Subnets (In multiple availability zones. The private ones can only access the internet througt NAT gateways)
3. Create Internet Gateway (To be able to comunicate to the Internet)
4. Create a Route Tables


### For Priavte Networks

1. Create a Nat Gateway
2. Create an Elastic IP