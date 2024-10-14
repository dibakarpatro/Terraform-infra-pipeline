Here’s a sample `README.md` file tailored to your Jenkins pipeline and Terraform infrastructure setup.

```markdown
# DevOps Project 1 - Terraform Infrastructure Automation

This repository contains the code and configuration files for automating the deployment of infrastructure using **Terraform**. The process is managed via a Jenkins pipeline with options to plan, apply, and destroy the infrastructure. The Terraform files are located inside the `infra` directory.

## Pipeline Overview

The Jenkins pipeline defined in this repository provides the following functionalities:
- **Clone Repository**: Clones the code from this GitHub repository.
- **Terraform Init**: Initializes the Terraform configuration.
- **Terraform Plan**: (Optional) Creates an execution plan to preview the Terraform changes.
- **Terraform Apply**: (Optional) Applies the changes defined by the Terraform configuration.
- **Terraform Destroy**: (Optional) Destroys the infrastructure.

### Parameters

The pipeline has three boolean parameters that control which Terraform actions are executed:
1. `PLAN_TERRAFORM`: Check this to run the `terraform plan` command.
2. `APPLY_TERRAFORM`: Check this to run the `terraform apply` command and deploy the infrastructure.
3. `DESTROY_TERRAFORM`: Check this to run the `terraform destroy` command and tear down the infrastructure.

### Jenkinsfile

The following stages are included in the Jenkins pipeline:
1. **Clone Repository**: Cleans the workspace and clones the repository from the `main` branch.
2. **Terraform Init**: Initializes the Terraform environment in the `infra` folder.
3. **Terraform Plan**: Runs the `terraform plan` command if the `PLAN_TERRAFORM` parameter is checked.
4. **Terraform Apply**: Runs the `terraform apply` command if the `APPLY_TERRAFORM` parameter is checked.
5. **Terraform Destroy**: Runs the `terraform destroy` command if the `DESTROY_TERRAFORM` parameter is checked.

### AWS Credentials

AWS credentials are securely injected into the pipeline using the `AmazonWebServicesCredentialsBinding`. The credentials ID is `aws-crendentails-dibbs`. Ensure that Jenkins has access to the necessary AWS credentials to provision or destroy resources in the cloud.

## Repository Structure

- **Jenkinsfile**: The pipeline script that automates the deployment process.
- **infra/**: Contains the Terraform configuration files for defining the infrastructure.

## How to Use

### Prerequisites
- **Jenkins** is installed and configured to run the pipeline.
- **Terraform** is installed on the Jenkins agent.
- An **AWS account** with proper access rights for provisioning resources via Terraform.

### Steps to Run the Pipeline

1. **Clone this repository** into your Jenkins instance.
2. **Configure AWS credentials** in Jenkins with ID `aws-crendentails-dibbs`.
3. **Run the Jenkins job**, and select the desired parameters (Plan, Apply, or Destroy).
4. Jenkins will execute the selected Terraform commands based on the parameters.

### Example Command

To manually initialize Terraform and apply the infrastructure, follow these steps:

```bash
# Navigate to the infra directory
cd infra/

# Initialize Terraform
terraform init

# Apply the Terraform configuration
terraform apply -auto-approve
```

### Destroying the Infrastructure

To manually destroy the infrastructure:

```bash
# Navigate to the infra directory
cd infra/

# Destroy the Terraform-managed infrastructure
terraform destroy -auto-approve
```

## Additional Information

- **Minimizing Risks**: Always review the `terraform plan` output before applying any changes to ensure the expected resources will be created, updated, or destroyed.
- **Best Practices**: Make sure to store sensitive information such as AWS credentials in secure credential stores (e.g., Jenkins Credentials) rather than in plain text.
```

This `README.md` provides a comprehensive overview of your Jenkins pipeline and Terraform project setup. You can modify the instructions or content if needed to better match the specifics of your project.
