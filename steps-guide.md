
# 🚀 Follow these steps to replicate the project:-

## **Step 1: Launch an EC2 Instance**
1. Go to the **AWS Management Console → EC2 → Launch Instance**.  
2. Choose an AMI:  
   - Example: **Amazon Linux 2**.  
3. Select instance type: **t2.micro (Free Tier eligible)**.  
4. Configure:
   - Key pair for SSH access.  
   - Security Group → allow ports **22 (SSH)** , **8080 (for web app)** and **3306 (For MySQL/Aurora)**.  
5. Launch the instance.


##  **Step 2: Install Required Packages on EC2**
For **Linux Instance**:-
- sudo yum update -y
- sudo yum install java-17-amazon-corretto-devel -y
- sudo dnf install mariadb105 -y
- sudo systemctl start mariadb

## **Step 3: Clone or Upload Java Application**

- If using GitHub:-
- sudo yum install git -y
- wget https://github.com/awslabs/amazon-rds-jdbc/releases/download/1.1.15/aws-mysql-jdbc-1.1.15.jar
- git clone https://github.com/<your-repo-name>.git
- cd <your-project-folder>

## **Step 4: Create an RDS MySQL Database**

1. Go to AWS Console → RDS → Create Database.
2. Select MySQL engine.
3. Choose Free Tier or small instance (e.g., db.t3.micro).
4. Configure:-
 - DB name, username, password.
 - Enable Public Access (for testing).
 - Assign Security Group to allow inbound access on port 3306.
5. Wait until the instance is Available

## **Step 5: Connect EC2 to RDS**
1. javac -cp .:aws-mysql-jdbc-1.1.15.jar DatabaseApp.java
2. java -cp .:aws-mysql-jdbc-1.1.15.jar DatabaseApp


## **Step 6: Connect EC2 to RDS**
1. Edit EC2’s Security Group to allow outbound traffic to port 3306 (MySQL).
2. Edit RDS’s Security Group to allow inbound traffic from EC2’s private IP or EC2 security group.

## **Step 7: Test Connection**

1. Use the EC2 terminal to verify connectivity:-
2. telnet <RDS-ENDPOINT> 3306

## **Step 8: Configure MySQL Workbench (Local System)**
1. Open MySQL Workbench →
   -  Click + to create a new connection.
2. Set:
   - #Hostname: RDS Endpoint
   - #Port: 3306
   - #Username/Password: (from RDS setup)
3. Test Connection → should succeed if RDS is publicly accessible.
4. You can now:
   - #View schema
   - #Run SQL queries
   - #Monitor performance

## **Step 9: Access the Application**
Once the Java app is running:-
- Open browser → http://<EC2-Public-IP>:8080
- Perform CRUD operations and verify results through MySQL Workbench.

---
