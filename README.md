# ☁️ Secure Terraform Remote State (Azure & OIDC)

![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![Azure](https://img.shields.io/badge/azure-%230072C6.svg?style=for-the-badge&logo=microsoftazure&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)
![Security](https://img.shields.io/badge/security-Passwordless_OIDC-red?style=for-the-badge)

**Architected and implemented by Leonid Lachmann**

This repository provides an enterprise-grade Infrastructure as Code (IaC) baseline, demonstrating the transition from local state management to a secure, centralized remote backend on Azure Blob Storage using **OpenID Connect (OIDC)** passwordless authentication.

## ⚙️ Security Features & Architecture
* **Passwordless Authentication (OIDC):** Eliminates the severe security risk of storing long-lived cloud credentials (client secrets) in GitHub. Authentication is dynamically handled via short-lived, federated tokens.
* **State Locking & Isolation:** Ensures state file consistency and prevents concurrent modification conflicts during team operations.
* **CI/CD Integration:** Automated workflow validating the OIDC handshake and generating infrastructure plans without exposing secrets.

## 📊 CI/CD Validation (Passwordless Execution)
The workflow below proves the successful federated authentication between GitHub Actions and Azure Active Directory, establishing the remote state connection and executing a `terraform plan` securely.

![OIDC Pipeline Success](images/01_oidc_pipeline.png)

---
*This blueprint demonstrates DevSecOps best practices for managing cloud identity and protecting critical infrastructure state data.*