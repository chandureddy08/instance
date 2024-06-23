variable "ami_id" {
    type = string
    default = "ami-031d574cddc5bb371"
}
variable "vpc_security_group_ids" {
    type = list
    default = ["sg-0ad74b957b6b7351f"]
}
variable "instance_type" {
    type = string
    default = "t3.micro"
}
variable "subnet_id" {
    type = string
    default = "subnet-02438e2af84b2481e"
}
variable "tags" {
    type = map
    default = {}
  
}