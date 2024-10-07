### **Step-by-Step Solution:**

#### **1. [main.tf](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-6/terraform-azure-aks/main.tf)** – Defining Azure Resources

#### **2. [variables.tf](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-6/terraform-azure-aks/variables.tf)** – Defining Input Variables

#### **3. [outputs.tf](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-6/terraform-azure-aks/outputs.tf)** – Defining Outputs

---

### **Execution:**

1. **Initialize the Project:**

   Initialize the Terraform project to download the required Azure provider.

   ```bash
   terraform init
   ```

2. **Plan the Deployment:**

   Generate the execution plan to review the resources Terraform will create.

   ```bash
   terraform plan
   ```

3. **Apply the Configuration:**

   Apply the Terraform configuration to create the AKS cluster, Virtual Network, and Subnet.

   ```bash
   terraform apply
   ```

   After reviewing the changes and typing `yes`, Terraform will create the resources and configure the cluster.

4. **Verify the Output:**

   Terraform will output the cluster’s API server URL.

   ```bash
   Outputs:

   aks_cluster_url = "aksdemo-qzlytiz6.hcp.eastus.azmk8s.io"
   kube_config = <sensitive>
   ```

5. **Access the Cluster:**

   You can now access the AKS cluster with kubectl by running:

   ```bash
   $ kubectl get nodes
   NAME                              STATUS   ROLES    AGE     VERSION
   aks-default-25509524-vmss000000   Ready    <none>   3m15s   v1.29.8
   aks-default-25509524-vmss000001   Ready    <none>   3m19s   v1.29.8
   ```

   This command should show the nodes in your AKS cluster.

---

### **Cleanup:**

When you're done, you can destroy the resources to avoid incurring unnecessary costs.

```bash
terraform destroy
```

---

### **Learning Outcomes:**
- Deploying an Azure Kubernetes Service (AKS) cluster using Terraform.
- Creating a Virtual Network and Subnet for the AKS cluster.
- Configuring Kubernetes client (kubectl) to manage the cluster.
- Understanding how Kubernetes networking and node pools are configured in Azure.

---

Let's move to next [mini project](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-7/problem.md)!
