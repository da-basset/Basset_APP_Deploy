variable "Name_Of_DB" {
    description = "End user generated database name"
    type = string
    default = "isaacDBName"
}

variable "Username_Of_DB" {
  description = "End user generated database username"
  type = string
  default = "isaac"
}

variable "Disk_Size_Choice" {
  description = "The Availability Zone choosen by user"
  type = number
  default = 10
}
