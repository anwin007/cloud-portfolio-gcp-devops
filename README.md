# Cloud Portfolio (DevOps demo)

Simple Node.js + Express app used for demonstrating a CI/CD -> ACR -> AKS pipeline.

## Prerequisites

Before deploying, ensure you have:

1. **Azure Resources**: Deploy infrastructure using Terraform
   ```bash
   cd public/terraform
   terraform init
   terraform plan
   terraform apply
   ```

2. **GitHub Secrets**: Configure the following secrets in your GitHub repository:
   - `AZURE_CREDENTIALS`: Azure service principal credentials (JSON format)
   - `ACR_LOGIN_SERVER`: Your ACR login server URL
   - `ACR_USERNAME`: ACR admin username
   - `ACR_PASSWORD`: ACR admin password
   - `AZURE_RESOURCE_GROUP`: Resource group name
   - `AKS_CLUSTER_NAME`: AKS cluster name

3. **Local Development**:
   - Node.js 18+
   - Docker (for local testing)

## Run locally
1. `npm install`
2. `npm start`
3. Open http://localhost:8080

API: GET /api/projects

## CI/CD Pipeline

This project includes a GitHub Actions CI/CD pipeline that:

1. **Build & Test**: Runs on every push/PR to main branch
2. **Docker Build**: Creates and pushes container image to ACR
3. **Deploy**: Updates the AKS deployment with the new image

### Manual Deployment

To deploy manually to AKS:

```bash
# Build and push Docker image
docker build -t <acr-login-server>/cloud-portfolio:latest .
docker push <acr-login-server>/cloud-portfolio:latest

# Deploy to AKS
kubectl apply -f k8s/
kubectl set image deployment/cloud-portfolio app=<acr-login-server>/cloud-portfolio:latest
kubectl rollout status deployment/cloud-portfolio
```

## Architecture

- **Frontend**: Static HTML/CSS/JS served by Express
- **Backend**: Node.js + Express API
- **Containerization**: Docker
- **CI/CD**: GitHub Actions
- **Registry**: Azure Container Registry (ACR)
- **Orchestration**: Azure Kubernetes Service (AKS)
- **Infrastructure**: Terraform (IaC)
