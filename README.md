# Deploy-website

## Project Structure

- `frontend/`: Contains the React frontend application.
- `store-website/`: Contains the Node.js store application.
- `terraform/`: Terraform configurations for deploying EC2 instances and Docker containers.
- `.github/workflows/`: GitHub Actions workflows for CI/CD.

## Deployment

1. **Frontend**: Builds and deploys the React application.
2. **Store**: Builds and deploys the Node.js store application.

### Terraform

1. Initialize Terraform:
   ```sh
   terraform init
