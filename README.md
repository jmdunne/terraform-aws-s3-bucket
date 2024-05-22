# My Terraform Module

This Terraform module creates an AWS S3 bucket. Simulating uploading to public registry.

## Usage

```hcl
module "example" {
  source      = "github.com/your-username/my-terraform-module"
  bucket_name = "my-example-bucket"
}
```

## Inputs

| Name        | Description                   | Type   | Default | Required |
|-------------|-------------------------------|--------|---------|----------|
| bucket_name | The name of the S3 bucket     | string | n/a     | yes      |

## Outputs

| Name        | Description                   |
|-------------|-------------------------------|
| bucket_name | The name of the created bucket|

## Requirements

| Name      | Version |
|-----------|---------|
| terraform | >= 0.14 |
| aws       | ~> 3.0  |

## Providers

| Name | Version |
|------|---------|
| aws  | ~> 3.0  |

## Example

```hcl
provider "aws" {
  region = "us-east-1"
}

module "example" {
  source      = "github.com/your-username/my-terraform-module"
  bucket_name = "my-example-bucket"
}
```

## License

MIT License. See [LICENSE](LICENSE) for full details.

