# Deploying PostgreSQL as an External Service in Kubernetes to Connect to AWS RDS PostgreSQL

![alt text](images/image-5.png)

## Description

This guide describes how to deploy a PostgreSQL service in a Kubernetes cluster that connects to an external AWS RDS PostgreSQL instance. This setup is useful for integrating external databases with applications running within Kubernetes while leveraging the managed database features of AWS RDS.

## Prerequisites

+ AWS RDS PostgreSQL Instance: An existing and running AWS RDS PostgreSQL instance.
+ Kubernetes Cluster: A running Kubernetes cluster with kubectl configured.
+ Database Credentials: Username and password for your RDS PostgreSQL database.

## Steps :-

Access the ArgoCD server.

![alt text](images/image.png)

Click on the "NEW APP" button to start adding a new application.

![alt text](images/image-1.png)

General: Enter the application name and project name. Set the sync policy to "Automatic" to enable automatic synchronization.

![alt text](images/image-2.png)

Source: Provide the repository URL and the path where your application's configuration files are stored.

![alt text](images/image-6.png)

Designation: Enter the cluster URL and the namespace where the application should be deployed.

![alt text](images/image-4.png)

Click on the "Create" button to finalize the process.

Once completed, you should see "postgre-external-service" listed.

![alt text](images/image-3.png)

