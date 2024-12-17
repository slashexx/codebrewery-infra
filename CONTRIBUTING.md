# Contributing to CodeBrewery Infra

Thank you for considering contributing to **CodeBrewery Infra**! Your input, whether it's improvements to infrastructure configurations, bug fixes, or suggestions, is invaluable to us. This guide will help you get started with contributing effectively.

---

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [Reporting Issues](#reporting-issues)
- [Feature Requests](#feature-requests)
- [Contributing Code](#contributing-code)
  - [Repository Setup](#repository-setup)
  - [Working with Terraform](#working-with-terraform)
  - [Working with Kubernetes Manifests](#working-with-kubernetes-manifests)
- [Commit and PR Guidelines](#commit-and-pr-guidelines)
- [Code Review Process](#code-review-process)

---

## Code of Conduct

By participating in this project, you agree to adhere to our [Code of Conduct](CODE_OF_CONDUCT.md) to ensure a positive and inclusive environment.

---

## Getting Started

Before contributing, ensure you have the following tools installed:

- **Git**: Version control system
- **Terraform** (v1.4+): Infrastructure as Code tool
- **Kubectl** (v1.25+): Kubernetes CLI
- **Kubernetes Cluster**: Minikube, k3s, or a cloud-managed cluster (e.g., AWS EKS, GKE)

### Fork and Clone Repository

1. Fork the repository to your GitHub account.
2. Clone the repository locally:
   ```bash
   git clone https://github.com/<your-username>/codebrewery-infra.git
   cd codebrewery-infra
   ```
3. Add the original repository as a remote to stay updated:
   ```bash
   git remote add upstream https://github.com/slashexx/codebrewery-infra.git
   ```

---

## Reporting Issues

1. Search for existing issues before creating a new one.
2. If the issue doesn't exist, create one using the appropriate [issue template](https://github.com/slashexx/codebrewery-infra/issues).
3. Provide clear information:
   - **Title**: A concise summary
   - **Description**: Steps to reproduce, expected behavior, and actual behavior
   - **Environment Details**: Terraform version, Kubernetes version, OS, etc.
   - **Screenshots/Logs** (if applicable)

---

## Feature Requests

We’re always open to new ideas! If you have a feature request:

1. Open a new issue under the **Feature Request** category.
2. Provide a clear description of the feature:
   - **What**: Explain the feature
   - **Why**: State the benefits or problem it solves
   - **How**: Suggest possible implementation details

---

## Contributing Code

### Repository Setup

1. Ensure you are on the latest `main` branch:
   ```bash
   git checkout main
   git pull upstream main
   ```
2. Create a new branch for your contribution:
   ```bash
   git checkout -b feature/your-feature-name
   ```

### Working with Terraform

- Follow Terraform best practices for structure and modularity.
- Format code before committing:
   ```bash
   terraform fmt -recursive
   ```
- Validate your changes locally:
   ```bash
   terraform init
   terraform validate
   ```

### Working with Kubernetes Manifests

- Use descriptive and clear YAML file names.
- Ensure manifests are valid:
   ```bash
   kubectl apply --dry-run=client -f <manifest.yaml>
   ```
- Lint YAML files with tools like `kubeval` or `kube-linter`.

---

## Commit and PR Guidelines

### Commit Messages

Use clear and descriptive commit messages. Follow this format:

```
<type>: <subject>
```

**Types**:
- `feat`: Add a new feature
- `fix`: Fix a bug
- `docs`: Documentation updates
- `chore`: Code refactoring, configuration changes, etc.

**Example**:
```
feat: add S3 bucket provisioning to Terraform
```

### Submitting a Pull Request

1. Ensure your code is clean and validated.
2. Push your branch:
   ```bash
   git push origin feature/your-feature-name
   ```
3. Open a pull request on GitHub:
   - Provide a **clear title** and description.
   - Link any related issues.
4. Address feedback promptly if requested.

---

## Code Review Process

- PRs will be reviewed by maintainers within a reasonable timeframe.
- Changes may require iterations based on feedback.
- Reviews focus on:
  - Code quality
  - Compliance with style guidelines
  - Security and performance considerations

---

## Questions?

If you have questions, feel free to open a discussion or contact the maintainers.

Let’s build and scale CodeBrewery together! 🚀

