![Terraform](https://img.shields.io/badge/Terraform-v1.4+-blue)
![Kubernetes](https://img.shields.io/badge/Kubernetes-v1.25+-blue)
![GitOps](https://img.shields.io/badge/GitOps-enabled-green)

# CodeBrewery Infra

This repository contains all the **infrastructure as code (IaC)** files, Kubernetes manifests, and other configurations required to manage the infrastructure for **CodeBrewery**. The application follows a **GitOps** approach to infrastructure management.

---

## Table of Contents

- [Overview](#overview)
- [Repository Structure](#repository-structure)
- [Technologies Used](#technologies-used)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setting Up](#setting-up)
- [Contributing](#contributing)
- [License](#license)

---

## Overview

CodeBrewery Infra provides all the scripts and manifests to define and manage the infrastructure for CodeBrewery. The repository leverages **Terraform** for cloud resource provisioning and **Kubernetes** for application orchestration. 

It follows a **GitOps** model, ensuring infrastructure is declaratively managed, version-controlled, and easily reproducible.

---

## Repository Structure

The repository is organized as follows:

```plaintext
codebrewery-infra/
│
├── k8s/                # Kubernetes manifests for CodeBrewery services
│   ├── deployments/    # Deployment manifests
│   ├── services/       # Service definitions
│   └── configmaps/     # Configuration files for Kubernetes
│
├── terraform/          # Terraform scripts for cloud resource provisioning
│   ├── modules/        # Reusable Terraform modules
│   ├── variables.tf    # Terraform input variables
│   └── main.tf         # Main Terraform configuration
│
├── CONTRIBUTING.md     # Contribution guidelines
└── README.md           # Documentation
```

---

## Technologies Used

- **Terraform**: Infrastructure as Code (IaC) to provision cloud resources.
- **Kubernetes**: For container orchestration.
- **GitOps**: Version-controlled infrastructure management.
- **HCL**: HashiCorp Configuration Language (used with Terraform).

---

## Getting Started

### Prerequisites

Make sure you have the following tools installed:

- **Terraform** (v1.4+)
- **Kubectl** (v1.25+)
- **Kubernetes Cluster** (Minikube, k3s, or cloud-managed clusters)
- **Git**

### Setting Up

1. **Clone the repository**:
   ```bash
   git clone https://github.com/slashexx/codebrewery-infra.git
   cd codebrewery-infra
   ```

2. **Provision infrastructure with Terraform**:
   Navigate to the `terraform/` directory and initialize Terraform:
   ```bash
   cd terraform
   terraform init
   terraform plan
   terraform apply
   ```

3. **Deploy Kubernetes manifests**:
   Navigate to the `k8s/` directory:
   ```bash
   kubectl apply -f k8s/deployments/
   kubectl apply -f k8s/services/
   ```

4. **Verify the deployment**:
   ```bash
   kubectl get pods
   kubectl get services
   ```

---

## Contributing

We welcome contributions! 🎉

To get started, check out the [CONTRIBUTING.md](CONTRIBUTING.md) file for details on how to:

- Report issues and suggest new features
- Contribute code
- Follow coding style and guidelines

---

## License

Distributed under the **MIT License**. See [LICENSE](LICENSE) for more information.

---

## Questions or Help?

If you have any questions or issues, feel free to open a discussion or raise an issue in this repository.

Let’s build CodeBrewery together! 🚀

---

