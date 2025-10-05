#!/bin/bash
javac -cp .:lib/aws-mysql-jdbc-1.1.15.jar src/DatabaseApp.java -d .
java -cp .:lib/aws-mysql-jdbc-1.1.15.jar DatabaseApp
