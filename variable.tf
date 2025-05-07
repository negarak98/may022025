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
  default="premium"
}

variable "account_replication_type"{
  type=string
  default="ZRS"
}

variable "environment = "dev""{
  type=string
  default="prod"
}
