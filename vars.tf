#### Variables for Provider ####
variable "PM_API_URL" {
  type = string
}

variable "PM_API_TOKEN_ID" {
  type = string
  sensitive = true
}

variable "PM_API_TOKEN_SECRET" {
  type = string
  sensitive = true
}


#### Variables for Resources ####

variable "LCX_PASSWORD" {
    type = string
    sensitive = true
}

variable "TARGET_NODE" {
    type = string
}

variable "EXTERNAL_STORAGE" {
    type = string
}