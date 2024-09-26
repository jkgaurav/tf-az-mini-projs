# **Deploying a Node.js App to Azure App Service via VS Code**

## **Prerequisites**
1. **Node.js Installed**: Make sure you have Node.js installed(v18 for this demo). You can download it from [Node.js Official Website](https://nodejs.org/).
---

## **Step 1: Set Up the Project Locally**

1. **Open VS Code** and create a new project folder for your Node.js app:
   - Go to `File -> Open Folder` and choose a location for your project.
   
2. **Initialize a Node.js project**:
   - Open the integrated terminal in VS Code and run:
     ```bash
     npm init -y
     ```
   - This will create a `package.json` file with default settings.

3. **Install Express.js**:
   - In the terminal, install Express by running:
     ```bash
     npm install express
     ```

4. **Create a simple app**:
   - In your project folder, create a file called `index.js` with the following content:
     ```javascript
     const express = require('express');
     const app = express();
     const port = process.env.PORT || 3000;

     app.get('/', (req, res) => {
       res.send('Hello, Azure App Service!');
     });

     app.listen(port, () => {
       console.log(`Server is running on port ${port}`);
     });
     ```

5. **Run your app locally**:
   - In the terminal, start your app:
     ```bash
     node index.js
     ```
   - Open a browser and go to `http://localhost:3000`. You should see "Hello, Azure App Service!".

---

## **Step 2: Set Up Azure App Service in VS Code**

1. **Install Azure App Service extension**:
   - In VS Code, open the Extensions tab, search for **Azure App Service**, and install it.

2. **Sign in to Azure**:
   - After installing the extension, click the Azure icon in the sidebar and click **Sign in to Azure**. Log in with your Azure credentials.

---

## **Step 3: Deploy the Node.js App to Azure**

1. **Deploy your app**:
   - In the Azure tab, right-click your new web app and select **Deploy to Web App...**.
   - Choose your project folder when prompted.

2. **Confirm the deployment**:
   - VS Code will deploy your project to the Azure App Service. Once done, you’ll receive a notification with a link to your live app.

---

## **Step 4: Access the Deployed App**

1. **Open your app**:
   - Click the link from the deployment notification, or you can find your app in the Azure Portal. Your app should display "Hello, Azure App Service!".
