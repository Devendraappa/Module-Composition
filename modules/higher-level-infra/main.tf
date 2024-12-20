module “vpc”{
source=”../vpc”
cidr_block=var.vpc_cidr_block 
public_subnet_count=var.public_subnet_count 
public_subnets=var.public_subnets 
private_subnet_count=var.private_subnet_count 
private_subnets=var.private_subnets 
}
module “ec2”{
source=”../ec2”
vpc_id=module.vpc.vpc_id 
subnet_ids=module.vpc.public_subnet_ids 
}
module “rds”{
source=”../rds”
vpc_id=module.vpc.vpc_id 
subnet_ids=module.vpc.private_subnet_ids 
}
