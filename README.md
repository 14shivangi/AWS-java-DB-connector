# 📡Cloud-Native Secure Database Integration on AWS with Java JDBC

## 📌 **Project Objective**

The main objective of this project is to **deploy a Java-based web application on an AWS EC2 instance** and **integrate it with an AWS RDS MySQL database**.  
This setup demonstrates a **scalable, secure, and cloud-based architecture** where the application performs **CRUD (Create, Read, Update, Delete)** operations on the RDS database.  

- Additionally, **MySQL Workbench** is used locally by developers for remote **database management and monitoring**, replicating a real-world enterprise environment.

---

## 📌 **Project Description**

- This project simulates a **real-world enterprise cloud setup** where:

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


##  **Key Benefits of This Setup**
---------------------------------

###  **Scalability**
- Both EC2 and RDS can be scaled independently as per traffic or data growth.  

###  **High Availability**
- RDS provides automatic backups, Multi-AZ replication, and snapshots for business continuity.  

###  **Security**
- Access is tightly controlled via **Security Groups**, **IAM roles**, and **encryption (at rest and in transit)**.  

###  **Ease of Management**
- Developers can manage databases directly from **MySQL Workbench** without AWS Console access.  

###  **Real-World Cloud Simulation**
- Mirrors how enterprises deploy applications and databases separately for better performance, scalability, and manageability.  

##  **Learning Outcomes**

#You will learn:

- EC2 setup and SSH connectivity  
- Java app deployment on cloud  
- RDS MySQL configuration and integration  
- Security group and VPC network configuration  
- Using MySQL Workbench for remote management  

---

##  **Future Enhancements**

- Add **Elastic Load Balancer** and **Auto Scaling** for EC2  
- Enable **RDS Multi-AZ** for high availability  
- Integrate **AWS CloudWatch** for performance monitoring  
- Containerize the Java app using **Docker** and deploy with **ECS or EKS**  
- Automate deployment with **CI/CD pipelines (CodePipeline / GitHub Actions)**

---
📂 Repository Structure

- aws-java-db-demo/

- ├── DatabaseApp.java
- ├── aws-mysql-jdbc-1.1.15.jar
- ├── README.md
---

✨ _Developed by [Shivangi Mishra](https://github.com/)_  
🎓 _B.Tech in Computer Science Engineering (AI & ML)_  
☁️ _Passionate about Cloud, AWS, and Application Deployment_  

