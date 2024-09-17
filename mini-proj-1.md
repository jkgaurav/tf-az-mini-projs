### Mini Project 1: Deploy a Simple Azure Storage Account Using Terraform

#### **Problem Statement:**
You are tasked with creating a simple Azure Storage Account using Terraform. The storage account should reside in a new resource group. This will give you a basic understanding of how to manage Azure resources with Terraform. 

#### **Objective:**
- Create an Azure Resource Group.
- Deploy an Azure Storage Account in the resource group.
- Output the Storage Account's primary connection string for future use.

#### **Time-box:**
1-2 hours

---
### Mini Project 1: Deploy a Simple Azure Storage Account Using Terraform

#### **Problem Statement:**
You are tasked with creating a simple Azure Storage Account using Terraform. The storage account should reside in a new resource group. This will give you a basic understanding of how to manage Azure resources with Terraform. 

#### **Objective:**
- Create an Azure Resource Group.
- Deploy an Azure Storage Account in the resource group.
- Output the Storage Account's primary connection string for future use.

#### **Time-box:**
1-2 hours

---

### **Approach:**

1. **Install Terraform:**
   If you haven't installed Terraform already, you can [download Terraform](https://www.terraform.io/downloads.html) and follow the installation instructions for your OS.

2. **Set Up Azure CLI:**
   Make sure you are logged into your Azure account using the Azure CLI. If it's not installed, follow the instructions [here](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli).

   ```bash
   az login
   ```

3. **Create a Project Directory:**
   Create a directory for your first Terraform project, where you’ll store all your configuration files.

   ```bash
   mkdir terraform-azure-storage
   cd terraform-azure-storage
   ```

4. **Terraform Configuration Files:**
   You'll need at least three files:
   - `main.tf`: Contains the resource definitions.
   - `variables.tf`: Defines input variables.
   - `outputs.tf`: Displays outputs such as the storage account connection string.
