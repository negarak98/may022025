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

variable "quote" {
  type        = string
  description = "City quote for string manipulation"
  default     = "Montreal: Where potholes have their own zip code."
}

