# Day 02 — Terraform Provider

### 30 Days of AWS Terraform Challenge

> **#30daysofawsterraform** | Tag: [@PiyushSachdeva](https://www.linkedin.com/in/piyush-sachdeva)

---

## 📺 Day 02 Video

[Day 02 - 30 Days of AWS Terraform](https://youtu.be/JFiMmaktnuM?si=2Y3mNqdyP_29pjiK)

> 🎬 *Click the video above to watch Day 02 of the #30daysofawsterraform challenge.*

---

## 📋 Topics Covered

- Terraform Providers
- Provider version vs Terraform core version
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
