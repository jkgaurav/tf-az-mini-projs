### **Step-by-Step Solution:**

#### 1. **[main.tf](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-1/terraform-azure-storage/main.tf)** – Defining Azure Resource Group and Storage Account

#### 2. **[variables.tf](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-1/terraform-azure-storage/variables.tf)** – Defining Input Variables

#### 3. **[outputs.tf](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-1/terraform-azure-storage/outputs.tf)** – Defining Outputs

---

### **Execution:**

1. **Initialize the Project:**

   Initialize Terraform in the project directory. This downloads the Azure provider plugin and sets up your workspace.

   ```bash
   terraform init
   ```

2. **Plan the Deployment:**

   Review the execution plan before applying it to ensure everything looks correct.

   ```bash
   terraform plan
   ```

3. **Apply the Configuration:**

   Apply the Terraform configuration to create the Azure resources.

   ```bash
   terraform apply
   ```

   After entering `yes` when prompted, Terraform will create the resource group and storage account.

4. **Verify the Output:**

   The connection string is marked as sensitive in `outputs.tf` file, meaning Terraform has hidden it for security reasons.

   ```bash
   Outputs:

   primary_connection_string = <sensitive>
   ```

   You can access the actual value of this output by running a command like terraform output `primary_connection_string` if you need to use it in your application or another part of your infrastructure.

   ```bash
   Outputs:

   terraform output primary_connection_string
   "DefaultEndpointsProtocol=https;AccountName=gkstoragedemotf;AccountKey=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;EndpointSuffix=core.windows.net"
   ```

6. **Verify in Azure:**

   You can also verify that the storage account has been created by navigating to the Azure Portal or using the Azure CLI:

   ```bash
   az storage account show --name gkstoragedemotf --resource-group rg-terraform-demo
   ```

---

### **Cleanup:**

Once you've completed this mini-project, you can destroy the resources to avoid incurring costs.

```bash
terraform destroy
```

---

### **Learning Outcomes:**
- Understanding the basic structure of a Terraform configuration (`main.tf`, `variables.tf`, `outputs.tf`).
- Using the Azure provider with Terraform.
- Deploying basic Azure resources (Resource Group, Storage Account).
- Understanding Terraform commands: `init`, `plan`, `apply`, and `destroy`.

---

Let's move on to the next [mini-project](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-2/problem.md)!
