### **Step-by-Step Solution:**

#### **1. [main.tf](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-4/terraform-azure-web-app/main.tf)** – Defining Azure Resources

#### **2. [variables.tf](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-4/terraform-azure-web-app/variables.tf)** – Defining Input Variables

#### **3. [outputs.tf](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-4/terraform-azure-web-app/outputs.tf)** – Defining Outputs

---

### **Execution:**

1. **Initialize the Project:**

   Initialize the Terraform project to download the required Azure provider.

   ```bash
   terraform init
   ```

2. **Plan the Deployment:**

   Generate the execution plan to review the resources that will be created.

   ```bash
   terraform plan
   ```

3. **Apply the Configuration:**

   Apply the Terraform configuration to create the App Service Plan and Web App.

   ```bash
   terraform apply
   ```

   After typing `yes`, Terraform will create the Web App, and you should see the output with the Web App’s URL.

4. **Verify the Output:**

   Terraform should output the URL of your Web App. You can visit the URL in your browser to see the default page.

   ```bash
   Outputs:

   web_app_url = "gktest-webapp-demo.azurewebsites.net"
   ```

5. **Deploy a Basic Node.js Application from Ubuntu Server:**

   You can deploy a simple Node.js, Python, or .NET application using Azure CLI or Git. Here's an example for deploying a Node.js app:

---

### **Cleanup:**

When you're finished, you can clean up the resources by running:

```bash
terraform destroy
```

---

### **Learning Outcomes:**
- Understanding how to deploy Azure Web Apps using Terraform.
- Using an App Service Plan to manage the infrastructure for web hosting.
- Deploying a Linux-based Web App and configuring runtimes like Node.js.
- Outputting the Web App URL for immediate validation.

---

Let's move on to next mini project!
