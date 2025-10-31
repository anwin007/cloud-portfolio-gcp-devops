# TODO: Add CI/CD Pipeline to Cloud Portfolio Project

## Overview
Implement a complete CI/CD pipeline using GitHub Actions to build, containerize, and deploy the Node.js Express app to Azure AKS via ACR, aligning with the demo described in README.

## Steps
- [x] Create Dockerfile for containerizing the Node.js app
- [x] Create .github/workflows/ci-cd.yml for GitHub Actions pipeline
- [x] Create Kubernetes deployment manifests (k8s/deployment.yaml, k8s/service.yaml)
- [x] Update README.md with CI/CD setup instructions and prerequisites
- [ ] Update .gitignore to exclude unnecessary files if needed
- [x] Test the pipeline (simulate build and deployment locally if possible) - Docker not available locally, tested via GitHub Actions

## Prerequisites (to be documented in README)
- Azure subscription with ACR and AKS set up via Terraform
- GitHub repository with secrets: AZURE_CREDENTIALS, ACR_LOGIN_SERVER, AKS_CLUSTER_NAME, etc.
- Docker installed locally for testing

## Notes
- Pipeline triggers on push to main branch
- Includes build, test, Docker build/push, and AKS deployment
- Uses Azure CLI for authentication and deployment
