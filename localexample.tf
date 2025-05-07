locals{
  servicename= "negarak"
  forum= "negarakmcit"
  lengthsa=length(local.servicename)

}
variable "winter_list_of_sports" {
  type    = list(string)
  default = ["icehockey", "snowboarding", "iceskating"]
}

variable "total_output" {
  type    = list(string)
  default = ["150", "150", "150"]
}

variable "characters" {
  type    = list(string)
  default = ["luke", "yoda", "darth"]
}
