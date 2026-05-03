terraform {
  required_version = ">= 1.0"   # Control de versiones de Terraform
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"        # Version AWS
    }
  }
}

# Configuración del proveedor AWS apuntando a LocalStack
provider "aws" {
  region                      = "eu-west-1"
  access_key                  = "test"                # credenciales
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
  s3_use_path_style           = true                 # necesario para S3 en LocalStack

  endpoints {
    s3 = "http://localhost:4566"   # endpoint de LocalStack
  }
}
# Bucket S3
resource "aws_s3_bucket" "bucket V1.0" {
  bucket = "mi-bucket-local-V1.0"
}
# Segundo Buckket S3
resource "aws_s3_bucket" "bucket V1.1" {
  bucket = "mi-bucket-local-V1.1"
}
