### **Terraform Project Structure:**

We will brake down the Terraform configuration into several files, each focusing on specific resources:

```
├── main.tf               # Provider configuration and overall settings
├── variables.tf          # Input variables for the resources
├── outputs.tf            # Output configuration for displaying important info
├── resource_group.tf     # Defines the Azure resource group
├── networking.tf         # VNet, Subnets, NSG, and IP configurations
├── virtual_machine.tf    # VM and extension to install nginx
├── app_gateway.tf        # Application Gateway setup
```

---

### **Step-by-Step Solution:**

#### **1. [`main.tf`](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-7/terraform-azure-appgw/main.tf) – Provider Configuration**

#### **2. [`variables.tf`](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-7/terraform-azure-appgw/variables.tf) – Defining Input Variables**

#### **3. [`outputs.tf`](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-7/terraform-azure-appgw/outputs.tf) – Defining Outputs**

#### **4. [`networking.tf`](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-7/terraform-azure-appgw/networking.tf) – Networking Resources (VNet, Subnets, NSG)**

#### **5. [`resource_group.tf`](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-7/terraform-azure-appgw/resource_group.tf) – Resource Group Definition**

#### **6. [`virtual_machine.tf`](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-7/terraform-azure-appgw/virtual_machine.tf) – Virtual Machine and Nginx Setup**

#### **7. [`app_gateway.tf`](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-7/terraform-azure-appgw/app_gateway.tf) – Application Gateway Setup**

---

### **Execution:**

1. **Initialize the Project**:
   ```bash
   terraform init
   ```

2. **Plan the Deployment**:
   ```bash
   terraform plan
   ```

3. **Apply the Configuration**:
   ```bash
   terraform apply
   ```

4. **Verify the Output**:
   Terraform will output the **Application Gateway's public IP**. Visit this IP in a browser to check if the backend VM is reachable.

5. **Test the Application Gateway**:
   The default **nginx** page should be accessible through the Application Gateway.

---

### **Cleanup**:
To avoid unnecessary costs, destroy the resources:
```bash
terraform destroy
```
