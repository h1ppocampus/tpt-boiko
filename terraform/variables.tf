variable "cred" {
    default = "cred.json"
}

variable "projName" {
    default = "formidable-sol-307111"
    type = string
}

variable "regName" {
type = string
description = "Reg of res"
default = "europe-north1"

}

variable "zoneName" {
type = string
description = "Zone inside region"
default = "europe-north1-c"
}

variable "dbName" {
  type        = string
  default     = "myBase"
  description = "Name of db"
}

variable "dbType" {
  type        = string
  default     = "db-f1-micro"
  description = "db Type"
}

variable "dbVersion" {
  type        = string
  default     = "POSTGRES_11"
  description = "Version of db"
}

variable "userName" {
  type        = string
  default     = "root"
  description = "username for db access "  
}

variable "dbPass" {
  type        = string
  default     = "passwordio"
  description = "pass"
}
