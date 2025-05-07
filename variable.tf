variable "subscription_id"{
  type=string
}
variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "tenant_id"{
  type=string
}
variable "storage_account_name" {
  type=string
  default="mcitstoragemay"
}

variable "account_tier"{
  type=string
  default="Premium"
}

variable "account_replication_type"{
  type=string
  default="ZRS"
}

variable "environment"{
  type=string
  default="prod"
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
