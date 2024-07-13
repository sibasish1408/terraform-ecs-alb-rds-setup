# Terraform-ecs-alb-rds-setup

This repository contains Terraform configurations for setting up an AWS infrastructure that includes a VPC, ECS cluster, Application Load Balancer (ALB), and RDS instance.

## Prerequisites

- Terraform installed on your local machine. [Download here](https://www.terraform.io/downloads.html).
- AWS CLI installed and configured with appropriate credentials.
- An AWS account.

## Setup and Deployment

1. **Clone the Repository**

    ```bash
    git clone https://github.com/sibasish1408/terraform-ecs-alb-rds-setup.git
    ```

2. **Configure Variables**

    Update the `variables.tf` file at the root level with appropriate values:

3. **Initialize Terraform**

    ```bash
    terraform init
    ```

4. **Plan the Deployment**

    ```bash
    terraform plan
    ```

5. **Apply the Deployment**

    ```bash
    terraform apply
    ```

6. **Access Outputs**

    ```bash
    terraform output
    ```

## Cleanup

To destroy the infrastructure and avoid any unwanted charges, run:

```bash
terraform destroy


