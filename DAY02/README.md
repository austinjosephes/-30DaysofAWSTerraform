# Day 02 — Terraform Provider

### 30 Days of AWS Terraform Challenge

> **#30daysofawsterraform** | Tag: [@PiyushSachdeva](https://www.linkedin.com/in/piyush-sachdeva)

---

## 📺 Day 02 Video

[![Day 02 - 30 Days of AWS Terraform](https://img.youtube.com/vi/JFiMmaktnuM/hqdefault.jpg)](https://youtu.be/JFiMmaktnuM)

> 🎬 *Click the thumbnail above to watch Day 02 of the #30daysofawsterraform challenge.*

---

## 📋 Topics Covered

- Terraform Providers
- Provider version vs Terraform Core version
- Why version matters
- Version constraints
- Operators for versions

---

## 📝 What I Learned

### 🔌 What are Terraform Providers?

Providers are **plugins** that allow Terraform to interact with cloud platforms, SaaS providers, and other APIs.

For AWS, we use the `hashicorp/aws` provider.

```text
Your .tf Files
       │
       ▼
Terraform Core ──────► AWS Provider Plugin ──────► AWS API
(parses config)        (hashicorp/aws)             (EC2, VPC...)
```

---

### ⚙️ Provider Version vs Terraform Core Version

| **Terraform Core** | **Provider** |
|---|---|
| The main Terraform binary | Plugin for a specific API |
| Example: `terraform v1.9.0` | Example: `hashicorp/aws v6.0` |
| Manages state, configuration parsing, plan, and apply | Handles API calls to AWS, Azure, GCP, etc. |
| Independent release cycle | Independent release cycle |

> They have **separate versioning** — upgrading Terraform Core does not automatically upgrade your providers.

---

### ❓ Why Version Matters

- ✅ **Compatibility** — Ensures the provider works with your Terraform version.
- ✅ **Stability** — Pin or constrain versions to avoid unexpected breaking changes.
- ✅ **Features** — New provider versions add support for new AWS services and features.
- ✅ **Bug Fixes** — Updates often include important fixes.
- ✅ **Reproducibility** — Consistent versions help ensure the same behavior across environments.

---

### 🔢 Version Constraints

Use version constraints to specify acceptable provider versions:

| Operator | Example | Meaning |
|---|---|---|
| `=` | `= 1.2.3` | Exact version only |
| `>=` | `>= 1.2` | Minimum version |
| `<=` | `<= 1.2` | Maximum version |
| `~>` | `~> 1.2` | `>= 1.2, < 2.0` |
| `~>` | `~> 1.2.3` | `>= 1.2.3, < 1.3.0` |
| `>=`, `<` | `>= 1.2, < 2.0` | Between 1.2 and 2.0 |

---

## 💻 Configuration Examples

### Basic Provider Configuration

```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
```

### Multiple Provider Versions

```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.1"
    }
  }
}
```

### Provider with VPC Resource (Day 02 Lab)

```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
}
```

---

## 🏗️ Architecture Diagram

```text
┌─────────────────────────────────────────────┐
│              AWS Cloud (us-east-1)          │
│                                             │
│   ┌─────────────────────────────────────┐   │
│   │          VPC: my-vpc                │   │
│   │        CIDR: 10.0.0.0/16            │   │
│   │                                     │   │
│   │   Subnets, EC2, RDS go here...      │   │
│   └─────────────────────────────────────┘   │
│                                             │
└─────────────────────────────────────────────┘

        Managed by: Terraform + AWS Provider
```

---

## 🚀 How to Run

```bash
# 1. Initialize — downloads the AWS provider plugin
terraform init

# 2. Preview what will be created
terraform plan

# 3. Apply and create the infrastructure
terraform apply

# 4. Lock provider versions for consistency
terraform providers lock

# 5. Clean up when done
terraform destroy
```

---

## ✅ Best Practices

1. Always specify provider versions in your configuration.
2. Use version constraints to control provider upgrades.
3. Test provider upgrades in **development** before production.
4. Document version requirements in your README.
5. Commit `.terraform.lock.hcl` to version control for consistent provider selections.

---

## 🔗 Resources

- [Terraform AWS Provider Docs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [AWS VPC Documentation](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html)
- [30 Days of AWS Terraform Challenge](https://github.com/piyushsachdeva/30-Days-of-Terraform)

---

## ➡️ Next Steps

Proceed to **Day 03** to learn about creating your first AWS resources with Terraform.

Check `task.md` for your assignments.

---

*Day 02 of #30daysofawsterraform 🚀*
