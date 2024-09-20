### **Step-by-Step Solution:**

#### **1. main.tf** – Defining Azure Resources

#### **2. variables.tf** – Defining Input Variables

#### **3. outputs.tf** – Defining Outputs

---

### **Execution:**

1. **Initialize the Project:**

   As always, start by initializing the Terraform project to download the required providers and dependencies.

   ```bash
   terraform init
   ```

2. **Plan the Deployment:**

   Generate the execution plan to review the resources Terraform will create.

   ```bash
   terraform plan
   ```

3. **Apply the Configuration:**

   Apply the Terraform configuration to deploy the virtual machine.

   ```bash
   terraform apply
   ```

   After reviewing the changes and typing `yes`, Terraform will create the VM, public IP, network interface, NSG, and associate everything with the subnet in the VNet.

4. **Verify the Output:**

   Terraform should output the public IP of the virtual machine, which you can use to SSH into the VM.

   ```bash
   Outputs:

   vm_public_ip = "X.X.X.X"
   ```

5. **SSH into the VM:**

   You can use the public IP and the admin credentials to SSH into the VM:

   ```bash
   ssh azureuser@X.X.X.X
   ```

---

### **Cleanup:**

Once you're done with the project, it's good practice to destroy the resources to avoid incurring unnecessary costs.

```bash
terraform destroy
```

---

### **Learning Outcomes:**
- Understanding how to provision an Azure Virtual Machine using Terraform.
- Deploying network components (Public IP, Network Interface, NSG) and associating them with a VM.
- Configuring basic VM details like size, admin username, and password.
- SSH access to Azure VMs via the public IP.

---

Let's continue to the next project!
