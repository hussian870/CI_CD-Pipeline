# CI/CD Pipeline

## Overview
This repository uses GitHub Actions to automate the build, test, and deployment of the application.

## Workflow Steps

1. Build: Compiles the source code using `scripts/build.sh`
2. Test: Runs unit/integration tests using `scripts/test.sh`
3. Deploy: Deploys to provisioned cloud infrastructure using `scripts/deploy.sh`

## Environment Variables

- Copy `.env.example` to create `.env` files.
- Secrets should be injected at runtime via GitHub Secrets or external secret managers.

## Manual Scripts

Script           Purpose          
build.sh        Build automation 
test.sh         Run tests        
deploy.sh       Deploy app       

## GitHub Actions

Workflow: .github/workflows/ci-cd.yml

Runs on push to main or pull requests.

## Security

- Secrets are not stored in the repository.
- Use GitHub Actions Secrets or tools like HashiCorp Vault or Mozilla SOPS.

## To Do

- Add Docker image build/push step if using containers.
- Add staging and prod deployment workflows.
