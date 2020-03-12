# Terraform-EC2

Basic terraform script to create EC2

## Dependencies

- AWS CLI - [Install](https://docs.aws.amazon.com/pt_br/cli/latest/userguide/cli-chap-install.html) and [Configure](https://docs.aws.amazon.com/pt_br/cli/latest/userguide/cli-chap-configure.html)

```
$ export AWS_ACCESS_KEY_ID= <IAM KEY>
```

```
$ export AWS_SECRET_ACCESS_ID= <IAM SECRET>
```

- Terraform - [Install](https://www.terraform.io/downloads.html)

## Variables.tf

| Variable                       | Default         | Comments              |
| :---                           | :---            | :---                  |
| `private_key` | '~/.ssh/key.pem' | Path to the SSH private key to be used for authentication |
| `instance_type`| 't2.micro'  | The type of instance to start |

## Run Script

```
$ terraform init
```

```
$ terraform plan -out=plano
```

```
$ terraform apply plano
```

## Connect to your instance 

```
$ ssh -i <pem path> ubuntu@<public_ip>
```

## if you want to remove created resources

```
$ Terraform destroy
```
