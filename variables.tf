variable "environment" {
  description = "Entorno de despliegue"
  type        = string
  default     = "dev"
}
variable "name_prefix" {
  description = "Prefijo para nombrar el bucket S3"
  type        = string
  default     = "prueba2"
}
