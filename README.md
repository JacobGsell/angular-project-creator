# angular-project-creator

## Motivation

I created this project to learn the basics of Terraform.

## What does it do?

Using the [local provider](https://registry.terraform.io/providers/hashicorp/local/latest)This project install Angular locally and then initializes a new Angular project completely with a useful folder structure.


## Prerequisites

Make sure you have the following installed:

- [Node.js](https://nodejs.org/en)
- [npm](https://www.npmjs.com/)
- [Terraform](https://www.terraform.io/)

## Setup

### Initialize Terraform

```sh
terraform init
```

### Apply the Terraform configuration

```sh
terraform apply
```

You will be prompted to enter a name for your project.

If successful, terraform will create the following folder structure in the root of this project:

- result
    - \<PROJECT-NAME\>
        - docs
        - angular

**Docs**: Folder for all your documentations

**Angular**: Contains a local angular version as well as an angular project with the name \<PROJECT-NAME\>-client

## License

This project is licensed under the MIT License. See the [License](./LICENSE) file for details.

