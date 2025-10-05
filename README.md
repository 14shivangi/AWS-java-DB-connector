# 🚀 **Java Application Deployment on AWS EC2 with RDS MySQL Integration**

---

## 📌 **Project Objective**

The main objective of this project is to **deploy a Java-based web application on an AWS EC2 instance** and **integrate it with an AWS RDS MySQL database**.  
This setup demonstrates a **scalable, secure, and cloud-based architecture** where the application performs **CRUD (Create, Read, Update, Delete)** operations on the RDS database.  

Additionally, **MySQL Workbench** is used locally by developers for remote **database management and monitoring**, replicating a real-world enterprise environment.

---

## 📌 **Project Description**

This project simulates a **real-world enterprise cloud setup** where:

- A **Java application** runs on an **Amazon EC2 instance** (Linux/Windows) and acts as the **Application Layer**.  
- The application connects to an **Amazon RDS MySQL database** that serves as the **Database Layer**.  
- Developers use **MySQL Workbench** on their local machines to manage and query the RDS database securely.  

**AWS Security Groups** are configured to enable secure communication:
- Between **EC2 ↔ RDS** for application connectivity.
- Between **MySQL Workbench ↔ RDS** for remote management.

This architecture promotes **security, scalability, and ease of maintenance**, following the same principles used in production-grade deployments.

---

## 📌 **Architecture Flow**

1. **User/Application Request** → The user interacts with the Java web app hosted on EC2.  
2. **EC2 Instance (App Layer)** → Executes application logic and connects to RDS using its endpoint.  
3. **RDS MySQL (DB Layer)** → Executes SQL queries (Insert, Update, Delete, Select) and returns results.  
4. **MySQL Workbench (Local Tool)** → Developers manage and monitor the RDS database remotely.  
---

## 🏗️ **Architecture Diagram**

![AWS Architecture](https://github.com/user-attachments/assets/084f5ae2-84d4-437d-9f99-fa4b2eb36fec)

---

## ⚙️ **AWS Services Used**

| Service | Purpose |
|----------|----------|
| **Amazon EC2** | Hosts the Java web application and serves user requests. |
| **Amazon RDS (MySQL)** | Managed database service for persistent data storage. |
| **MySQL Workbench** | GUI tool for database design and management. |
| **Security Groups** | Controls inbound and outbound access between EC2, RDS, and developer systems. |
| **IAM Roles & Policies** | Secure access control for AWS services. |
| **VPC (Virtual Private Cloud)** | Provides network isolation and secure communication. |

---



**Follow these steps to replicate the project:**
---

## **Step 1: Launch an EC2 Instance**
---------------------------------

1. Go to the **AWS Management Console → EC2 → Launch Instance**.  
2. Choose an AMI:  
   - Example: **Amazon Linux 2** or **Ubuntu 22.04 LTS**.  
3. Select instance type: **t2.micro (Free Tier eligible)**.  
4. Configure:
   - Key pair for SSH access.  
   - Security Group → allow ports **22 (SSH)** and **8080 (for web app)**.  
5. Launch the instance.

---

##  **Step 2: Install Required Packages on EC2**
---------------------------------

For **Linux Instance**:-
- sudo yum update -y
- sudo yum install java-17-openjdk -y
- sudo yum install git -y



## **Step 3: Clone or Upload Java Application**
---------------------------------

- If using GitHub:-
- git clone https://github.com/<your-repo-name>.git
- cd <your-project-folder>

-If it’s a Spring Boot app, run:-
-java -jar yourapp.jar


## **Step 4: Create an RDS MySQL Database**
---------------------------------

1. Go to AWS Console → RDS → Create Database.
2. Select MySQL engine.
3. Choose Free Tier or small instance (e.g., db.t3.micro).
4. Configure:-
 - DB name, username, password.
 - Enable Public Access (for testing).
 - Assign Security Group to allow inbound access on port 3306.
5. Wait until the instance is Available


## **Step 5: Connect EC2 to RDS**
---------------------------------

1. Edit EC2’s Security Group to allow outbound traffic to port 3306 (MySQL).
2. Edit RDS’s Security Group to allow inbound traffic from EC2’s private IP or EC2 security group.

## **Step 6: Test Connection**
---------------------------------
1. Use the EC2 terminal to verify connectivity:-
2. telnet <RDS-ENDPOINT> 3306

## **Step 7: Configure MySQL Workbench (Local System)**
---------------------------------

1. Open MySQL Workbench → Click + to create a new connection.
2. Set:
#Hostname: RDS Endpoint
#Port: 3306
#Username/Password: (from RDS setup)
3. Test Connection → should succeed if RDS is publicly accessible.
4. You can now:
#View schema
#Run SQL queries
#Monitor performance

## **Step 8: Access the Application**
---------------------------------
Once the Java app is running:
Open browser → http://<EC2-Public-IP>:8080
Perform CRUD operations and verify results through MySQL Workbench.

---


##  **Key Benefits of This Setup**
---------------------------------


###  **Scalability**
# Both EC2 and RDS can be scaled independently as per traffic or data growth.  

###  **High Availability**
# RDS provides automatic backups, Multi-AZ replication, and snapshots for business continuity.  

###  **Security**
# Access is tightly controlled via **Security Groups**, **IAM roles**, and **encryption (at rest and in transit)**.  

###  **Ease of Management**
# Developers can manage databases directly from **MySQL Workbench** without AWS Console access.  

###  **Real-World Cloud Simulation**
# Mirrors how enterprises deploy applications and databases separately for better performance, scalability, and manageability.  

##  **Learning Outcomes**
---------------------------------


#You will learn:

- EC2 setup and SSH connectivity  
- Java app deployment on cloud  
- RDS MySQL configuration and integration  
- Security group and VPC network configuration  
- Using MySQL Workbench for remote management  

---

##  **Future Enhancements**
---------------------------------


- Add **Elastic Load Balancer** and **Auto Scaling** for EC2  
- Enable **RDS Multi-AZ** for high availability  
- Integrate **AWS CloudWatch** for performance monitoring  
- Containerize the Java app using **Docker** and deploy with **ECS or EKS**  
- Automate deployment with **CI/CD pipelines (CodePipeline / GitHub Actions)**

---

✨ _Developed by [Shivangi Mishra](https://github.com/)_  
🎓 _B.Tech in Computer Science Engineering (AI & ML)_  
☁️ _Passionate about Cloud, AWS, and Application Deployment_  

