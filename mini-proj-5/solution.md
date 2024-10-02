### **Step-by-Step Solution:**

#### **1. [main.tf](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-5/terraform-azure-sqldb/main.tf)** – Defining Azure Resources

#### **2. [variables.tf](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-5/terraform-azure-sqldb/variables.tf)** – Defining Input Variables

#### **3. [outputs.tf](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-5/terraform-azure-sqldb/outputs.tf)** – Defining Outputs

---

### **Execution:**

1. **Initialize the Project:**

   Initialize the Terraform project to download the required Azure provider.

   ```bash
   terraform init
   ```

2. **Plan the Deployment:**

   Generate the execution plan to review the resources that Terraform will create.

   ```bash
   terraform plan
   ```

3. **Apply the Configuration:**

   Apply the Terraform configuration to create the SQL Server, SQL Database, and firewall rule.

   ```bash
   terraform apply
   ```

   After reviewing the changes and typing `yes`, Terraform will provision the resources, and you’ll see the SQL Server’s fully qualified domain name (FQDN).

4. **Verify the Output:**

   Terraform will output the connection string for the SQL Server. You can use this in your database clients or applications.

   ```bash
   Outputs:

   sql_connection_string = "sqlserver-gktest-demo.database.windows.net"
   ```

5. **Connect to the SQL Database:**

   You can connect to the database using a SQL client, like Azure Data Studio or [`sqlcmd`](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-5/sqlconnect), by providing the server name, database name, admin username, and password.

---

### **Additional Steps:**
- If you want to automate fetching your current public IP address, you can add a small script to dynamically insert the correct value for the `my_ip_address` variable.
  
  Example using an external [data source](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-5/automate-firewall.md) in Terraform:
---

### **Cleanup:**

When you're done, make sure to remove the resources to avoid incurring costs.

```bash
terraform destroy
```

---

### **Learning Outcomes:**
- Deploying Azure SQL Servers and Databases using Terraform.
- Configuring firewall rules to secure your database and allow specific IPs.
- Understanding basic database sizing and tier options in Azure.
- Generating connection strings and preparing for future use with applications.

---

Let's move to the next [mini project](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-6/problem.md)!
