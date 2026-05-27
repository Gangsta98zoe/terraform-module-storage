# Módulo: storage

Crea un bucket S3 con versionado habilitado y acceso público bloqueado.

## Recursos creados

| Recurso | Descripción |
|---|---|
| `random_id` | Sufijo aleatorio para nombre único del bucket |
| `aws_s3_bucket` | Bucket S3 con nombre único |
| `aws_s3_bucket_versioning` | Habilita el versionado de objetos |
| `aws_s3_bucket_public_access_block` | Bloquea todo acceso público |

## Uso

```hcl
module "storage" {
  source      = "github.com/Gangsta98zoe/terraform-module-storage?ref=v0.1.0"
  environment = "dev"
  name_prefix = "prueba2"
}
```

## Versiones

| Versión | Descripción |
|---|---|
| v0.1.0 | Módulo inicial: S3 con versionado y acceso público bloqueado |

## Justificación SemVer
- v0.1.0: primera versión funcional del módulo.
- Nuevas variables/outputs → incrementa MINOR.
- Corrección de bug → incrementa PATCH.

---
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.100.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.9.0 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [aws_s3_bucket.storage](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_public_access_block.storage](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_versioning.storage](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [random_id.suffix](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_environment"></a> [environment](#input\_environment) | Entorno de despliegue | `string` | `"dev"` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | Prefijo para nombrar el bucket S3 | `string` | `"prueba2"` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_bucket_arn"></a> [bucket\_arn](#output\_bucket\_arn) | ARN del bucket S3 |
| <a name="output_bucket_name"></a> [bucket\_name](#output\_bucket\_name) | Nombre del bucket S3 creado |
