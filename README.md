
📌 Java Application Deployment on AWS EC2 with RDS MySQL Integration:-
=
Project Objective:-
=

The main objective of this project is to deploy a Java-based web application on an AWS EC2 instance and integrate it with an AWS RDS MySQL database.
This setup demonstrates a scalable, secure, and cloud-based architecture where the application performs CRUD (Create, Read, Update, Delete) operations on the RDS database.

Additionally, MySQL Workbench is used locally by developers for remote database management and monitoring, replicating a real-world enterprise environment.
=
Project Description:-
=

This project simulates a real-world enterprise cloud setup where:

A Java application runs on an Amazon EC2 instance (Linux/Windows) and acts as the Application Layer.

The application connects to an Amazon RDS MySQL database that serves as the Database Layer.

Developers use MySQL Workbench on their local machines to manage and query the RDS database securely.

AWS Security Groups are configured to enable secure communication:

Between EC2 ↔ RDS for application connectivity.

Between MySQL Workbench ↔ RDS for remote management.

This architecture promotes security, scalability, and ease of maintenance, following the same principles used in production-grade deployments.

 Architecture Flow:-
=
 Step-by-Step Flow:

1. User/Application Request → The user interacts with the Java web app hosted on EC2.

2. EC2 Instance (App Layer) → Executes application logic and connects to RDS using its endpoint.

3. RDS MySQL (DB Layer) → Executes SQL queries (Insert, Update, Delete, Select) and returns results.

4. MySQL Workbench (Local Tool) → Developers manage and monitor the RDS database remotely.

=

Data Flow:

MySQL Workbench ↔ RDS MySQL ↔ EC2 Java Application ↔ User

=
Architecture Diagram
=
⚙️ AWS Services Used
Service	Purpose
1. Amazon EC2	Hosts the Java web application and serves user requests.
2. Amazon RDS (MySQL)	Managed database service for persistent data storage.
3. MySQL Workbench	GUI tool for database design and management.
4. Security Groups	Controls inbound and outbound access between EC2, RDS, and developer systems.
5. IAM Roles & Policies	Secure access control for AWS services.
6. VPC (Virtual Private Cloud)	Provides network isolation and secure communication.

=
 Setup & Deployment Steps:-
=
Follow these steps to replicate the project:-

Step 1: Launch an EC2 Instance

Go to the AWS Management Console → EC2 → Launch Instance.

Choose an AMI:

Example: Amazon Linux 2 or Ubuntu 22.04 LTS.

Select instance type: t2.micro (Free Tier eligible).

Configure:-

Key pair for SSH access.

Security Group → allow ports 22 (SSH) and 8080 (for web app).

Launch the instance.

Connect to EC2:

ssh -i "your-key.pem" ec2-user@<EC2-Public-IP>

Step 2: Install Required Packages on EC2

For Linux instance:

sudo yum update -y
sudo yum install java-17-openjdk -y
sudo yum install git -y


Verify Java:

java -version

Step 3: Clone or Upload Java Application

If using GitHub:

git clone https://github.com/<your-repo-name>.git
cd <your-project-folder>


If it’s a Spring Boot app, run:

java -jar yourapp.jar

Step 4: Create an RDS MySQL Database

Go to AWS Console → RDS → Create Database.

Select MySQL engine.

Choose Free Tier or small instance (e.g., db.t3.micro).

Configure:

DB name, username, password.

Enable Public Access (for testing).

Assign Security Group to allow inbound access on port 3306.

Wait until the instance is Available.

Step 5: Connect EC2 to RDS

Edit EC2’s Security Group to allow outbound traffic to port 3306 (MySQL).
Edit RDS’s Security Group to allow inbound traffic from EC2’s private IP or Security Group.

In your Java code or application.properties file:

spring.datasource.url=jdbc:mysql://<RDS-ENDPOINT>:3306/<database_name>
spring.datasource.username=<username>
spring.datasource.password=<password>

Step 6: Test Connection

Use the EC2 terminal to verify connectivity:

telnet <RDS-ENDPOINT> 3306


If successful, your EC2 instance can reach the database.

Step 7: Configure MySQL Workbench (Local System)

Open MySQL Workbench → Click + to create a new connection.

Set:

Hostname: RDS Endpoint

Port: 3306

Username/Password: (from RDS setup)

Test Connection → should succeed if RDS is publicly accessible.

You can now:

View schema

Run SQL queries

Monitor performance

Step 8: Access the Application

Once the Java app is running:

Open browser → http://<EC2-Public-IP>:8080

Perform CRUD operations and verify results through MySQL Workbench.
=
Key Benefits of This Setup:-
=
✅ Scalability

Both EC2 and RDS can be scaled independently as per traffic or data growth.

✅ High Availability

RDS provides automatic backups, Multi-AZ replication, and snapshots.

✅ Security

Access is tightly controlled via Security Groups, IAM roles, and encryption.

✅ Ease of Management

Developers can manage databases directly from MySQL Workbench without AWS Console access.

✅ Real-World Cloud Simulation

Mirrors how enterprises deploy apps and databases separately for better performance and manageability.
=
Learning Outcomes

You will learn:-

EC2 setup and SSH connectivity

Java app deployment on cloud

RDS MySQL configuration and integration

Security group and VPC network configuration

Using MySQL Workbench for remote management
=
Future Enhancements

Add Elastic Load Balancer and Auto Scaling for EC2

Enable RDS Multi-AZ for high availability

Integrate AWS CloudWatch for performance monitoring

Containerize the Java app using Docker and deploy with ECS or EKS

Automate deployment with CI/CD pipelines (CodePipeline / GitHub Actions)
=
 Conclusion

This project provides a complete end-to-end deployment scenario of a Java application integrated with an AWS RDS MySQL database.
It demonstrates real-world cloud concepts like scalability, security, managed services, and network isolation, essential for modern cloud and DevOps engineers.


✨ Developed by Shivangi Mishra
=
