### **Step-by-Step Solution:**

#### 1. **(main.tf)[https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-2/terraform-azure-vnet/main.tf]** – Defining the Virtual Network and Subnet

#### 2. **(variables.tf)[https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-2/terraform-azure-vnet/variables.tf]** – Defining Input Variables

#### 3. **(outputs.tf)[https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-2/terraform-azure-vnet/outputs.tf]** – Defining Outputs

---

### **Execution:**

1. **Initialize the Project:**

   Initialize Terraform to set up the workspace and download the necessary Azure provider.

   ```bash
   terraform init
   ```

2. **Plan the Deployment:**

   Generate an execution plan to verify your configuration.

   ```bash
   terraform plan
   ```

3. **Apply the Configuration:**

   Apply the configuration to create the virtual network and subnet.

   ```bash
   terraform apply
   ```

   After reviewing the changes and entering `yes`, Terraform will create the VNet and subnet.

4. **Verify the Output:**

   You should see the VNet and Subnet IDs in the output.

   ```bash
   Outputs:

   vnet_id = "/subscriptions/xxxx/resourceGroups/rg-terraform-network-demo/providers/Microsoft.Network/virtualNetworks/vnet-demo"
   subnet_id = "/subscriptions/xxxx/resourceGroups/rg-terraform-network-demo/providers/Microsoft.Network/virtualNetworks/vnet-demo/subnets/subnet-demo"
   ```

5. **Verify in Azure:**

   You can check the resources in the Azure Portal or use the Azure CLI:

   ```bash
   az network vnet show --name vnet-demo --resource-group rg-terraform-network-demo
   ```

   To check the subnet:

   ```bash
   az network vnet subnet show --resource-group rg-terraform-network-demo --vnet-name vnet-demo --name subnet-demo
   ```

---

### **Cleanup:**

When you're finished with this mini-project, you can remove the resources with Terraform.

```bash
terraform destroy
```

---

### **Learning Outcomes:**
- Deploying a Virtual Network and Subnet using Terraform.
- Understanding how to handle network-related resources in Azure.
- Applying Terraform's modularity by defining multiple resources within one configuration.
- Using Terraform outputs to store resource IDs for future use in a larger infrastructure.

---

Let's move on to the next one!
