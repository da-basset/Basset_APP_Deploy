provider "aws" {
  region = "us-west-2"
}

module "TheDB" {
  source = "./modules/MyDB"

  DB_Name = var.Name_Of_DB
  DB_Username = var.Username_Of_DB
}

module "TheEC2" {
  // Make EC2 cluster, with 2-3 instances. To work with LB in correct fashion.
  source = "./modules/MyEC2"

  EC2_Disk_Size = var.Disk_Size_Choice
  EC2_Instance_Private_DNS = module.TheVPC.Output_TheVPC_Resource_Private_Subnet_ID
  // Add Variable for EC2 Name

}

module "TheEC2-SG" {
  source = "./modules/MyEC2-SG"
  EC2_SG_VPC_ID = module.TheVPC.TheVPC_ID
  //EC2_SG_Private_Incoming_CIDR = module.TheVPC.TheVPC_Resource_Public_Subnet_CIDR
  //EC2_SG_Private_Outgoing_CIDR = module.TheVPC.TheVPC_Resource_Public_Subnet_CIDR

  //depends_on = [ module.TheVPC ]
}

module "TheVPC" {
  source = "./modules/MyVPC"
  // Add Variable for VPC Name
  
}
