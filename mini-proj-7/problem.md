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

1. **Set up the Virtual Network with [Dedicated Subnets](https://github.com/jkgaurav/tf-az-mini-projs/blob/main/mini-proj-7/faqs.md#subnet-configuration):**
   - Create a **Virtual Network** with separate subnets:
     - One subnet for the Virtual Machine (backend server).
     - One dedicated subnet for the Application Gateway, ensuring isolated network traffic as required for proper operation.

2. **Deploy the Virtual Machine (Backend Server):**
   - Create a simple **Linux Virtual Machine** in the backend subnet to act as a web server.
   - This VM will be added to the backend pool of the Application Gateway.

3. **Deploy the Azure Application Gateway in the Dedicated Subnet:**
   - Ensure the Application Gateway is deployed in the dedicated subnet to meet Azure's requirement for subnet isolation.
   - Configure the Application Gateway with:
     - A **public IP address** for external access.
     - A **gateway IP configuration** tied to the dedicated subnet.
     - A **backend pool** linked to the Virtual Machine.
     - A **frontend IP configuration**, **listener**, and **HTTP routing rule** for routing traffic.
     - A **health probe** to monitor the backend server’s health.

4. **Output the Public IP of the Application Gateway:**
   - Output the public IP address of the Application Gateway to test the traffic routing and confirm that the backend server is accessible through the gateway.
