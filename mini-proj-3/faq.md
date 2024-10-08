**FAQ: Azure Linux Virtual Machine Configuration in Terraform**

### `disable_password_authentication` Block

**Q1: What does the `disable_password_authentication` setting control?**  
The `disable_password_authentication` setting controls whether password-based authentication is allowed for logging into the Linux virtual machine (VM). Setting it to `false` allows users to log in using a username and password, while setting it to `true` only permits SSH key-based authentication.

**Q2: Why should I set `disable_password_authentication = true`?**  
Setting `disable_password_authentication = true` enhances the security of your VM by requiring users to authenticate using SSH keys, which are harder to compromise than passwords. This is considered a best practice to prevent brute-force attacks or unauthorized access via weak passwords.

**Q3: When should I use `disable_password_authentication = false`?**  
You should use `disable_password_authentication = false` when you want to enable password-based login, such as during development or testing environments where convenience is prioritized over security. However, it is not recommended for production environments due to the associated security risks.

**Q4: What are the security risks of setting `disable_password_authentication = false`?**  
Allowing password authentication exposes the VM to potential brute-force attacks, especially if weak or commonly used passwords are set. Even with strong passwords, this setting can still pose a security risk compared to SSH keys, as password databases can be targeted.

**Q5: How can I secure a VM with `disable_password_authentication = false`?**  
If you choose to allow password authentication, you should follow these best practices:
- Enforce strong password policies.
- Use Azure's Network Security Group (NSG) to restrict access to port 22 (SSH).
- Enable Azure Security Center recommendations and audits to monitor security configurations.
- Consider multi-factor authentication (MFA) if feasible.

**Q6: What is the impact on automation tools like Ansible when `disable_password_authentication = false`?**  
Automation tools like Ansible often require SSH access to configure machines. If `disable_password_authentication = false`, you can use a password to authenticate these tools, making it easier to integrate them into non-production or testing workflows where SSH keys are not preferred.
