# Day 01 — Why Terraform Exists (Infrastructure as Code Basics)

> Part of the **#30DaysOfAWSTerraform** challenge by Piyush Sachdeva

---

## 📌 Topic

Introduction to Infrastructure as Code (IaC) and Terraform fundamentals.

---

## 🧠 What I Learned

Before Terraform, infrastructure was built by manually clicking through the AWS console. This caused **infrastructure drift**: environments diverge silently and nobody knows why.

As a NOC Engineer, I've seen this cause real incidents at 2 AM. The question that always takes longest: **"What changed?"**

Terraform answers that question automatically, because everything is in Git.

---

## ❌ Problem — Manual Setup

| Issue | Impact |
|---|---|
| Engineer A builds Dev → `t2.micro` | Different from Prod |
| Engineer B builds Prod → `t2.medium` | Config drift |
| No record of changes | Can't debug incidents |
| "Works on my machine" | Environment inconsistency |

---

## ✅ Solution — Terraform (IaC)

- One `.tf` file defines everything
- Same code → Dev, Staging, Prod
- Git history = full audit trail
- Identical environments, always

---

## ⚙️ The 4-Command Workflow

```bash
terraform init      # Download provider plugins (like npm install)
terraform plan      # Preview changes — dry run, nothing created
terraform apply     # Build real infrastructure via AWS APIs
terraform destroy   # Tear it all down cleanly — saves money
