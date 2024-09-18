### Mini Project 2: Deploy an Azure Virtual Network and Subnet Using Terraform

#### **Problem Statement:**
Now that you've successfully deployed a simple storage account, your next task is to create an Azure Virtual Network (VNet) with a subnet. This will help you learn how to manage networking resources in Azure using Terraform.

#### **Objective:**
- Create an Azure Virtual Network (VNet).
- Define a subnet within the VNet.
- Output the VNet and Subnet IDs for future use.

#### **Time-box:**
2-3 hours

---
### Mini Project 2: Deploy an Azure Virtual Network and Subnet Using Terraform

#### **Problem Statement:**
Now that you've successfully deployed a simple storage account, your next task is to create an Azure Virtual Network (VNet) with a subnet. This will help you learn how to manage networking resources in Azure using Terraform.

#### **Objective:**
- Create an Azure Virtual Network (VNet).
- Define a subnet within the VNet.
- Output the VNet and Subnet IDs for future use.

#### **Time-box:**
2-3 hours

---

### **Approach:**

1. **Set up your project directory:**
   Create a new directory for this project or reuse the previous directory by adding new files.

   ```bash
   mkdir terraform-azure-vnet
   cd terraform-azure-vnet
   ```

2. **Files to Create:**
   - `main.tf`: Contains resource definitions for the VNet and subnet.
   - `variables.tf`: Defines variables for custom inputs like VNet name, address space, and subnet name.
   - `outputs.tf`: Displays the output values like VNet ID and Subnet ID.

---
