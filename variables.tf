variable "source-vpc-id" {
  description = "[Source] VPC: ID"
  type        = string
  default     = ""
}
variable "source-route_table-private-id" {
  description = "[Source] Route Table - Private: ID"
  type        = string
  default     = ""
}
variable "source-route_table-restricted-id" {
  description = "[Source] Route Table - Restricted: ID"
  type        = string
  default     = ""
}
variable "source-route_table-public-id" {
  description = "[Source] Route Table - Public: ID"
  type        = string
  default     = ""
}

variable "peer-vpc-id" {
  description = "[Peer] VPC: ID"
  type        = string
  default     = ""
}
variable "peer-route_table-private-id" {
  description = "[Peer] Route Table - Private: ID"
  type        = string
  default     = ""
}
variable "peer-route_table-restricted-id" {
  description = "[Peer] Route Table - Restricted: ID"
  type        = string
  default     = ""
}
variable "peer-route_table-public-id" {
  description = "[Peer] Route Table - Public: ID"
  type        = string
  default     = ""
}
