### Mini Project 7: Deploy Azure Application Gateway with Terraform

#### **Problem Statement:**
In this project, you will deploy an Azure Application Gateway, which acts as a load balancer and web traffic manager. You’ll configure a backend pool with a simple VM, and set up basic HTTP routing and a health probe. This project will teach you how to handle load balancing and traffic management with Azure's Application Gateway using Terraform.

#### **Objective:**
- Create an Azure Application Gateway.
- Set up backend pool with a Virtual Machine.
- Configure routing rules and a health probe.
- Output the Application Gateway’s public IP.

#### **Time-box:**
4-5 hours

---

### **Approach:**

You will:
1. Create a Virtual Network, Subnet, and a Virtual Machine as the backend server.
2. Deploy an Application Gateway in the same network.
3. Configure HTTP routing rules, a listener, a backend pool, and a health probe.
4. Output the public IP address of the Application Gateway for testing.
