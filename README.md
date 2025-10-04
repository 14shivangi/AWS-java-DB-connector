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

### 🧩 **Step-by-Step Flow**

1. **User/Application Request** → The user interacts with the Java web app hosted on EC2.  
2. **EC2 Instance (App Layer)** → Executes application logic and connects to RDS using its endpoint.  
3. **RDS MySQL (DB Layer)** → Executes SQL queries (Insert, Update, Delete, Select) and returns results.  
4. **MySQL Workbench (Local Tool)** → Developers manage and monitor the RDS database remotely.  
5. **Data Flow:**  
