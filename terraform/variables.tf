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

variable "vmName" {
    type = string
    default = "vm1"
}

variable "vmType" {
    type = string
    default = "f1-micro"
}

variable "osType" {
  type = string
  description = "Image AMI"
  default = "debian-cloud/debian-9"
}
