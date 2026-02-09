Project: Dockerized Strapi Application with AWS Deployment

Project Overview  
This project demonstrates containerization of a Strapi CMS application using Docker and running it locally for development. The same Docker image is then pushed to AWS Elastic Container Registry (ECR) and deployed on Amazon Elastic Kubernetes Service (EKS), exposing the application using a cloud LoadBalancer.

This project goes beyond basic Docker usage and showcases real-world cloud deployment practices.

Objectives

- Containerize a Strapi application using Docker
    
- Run the Strapi container locally
    
- Push Docker image to AWS ECR
    
- Deploy the application on AWS EKS
    
- Expose the application using a LoadBalancer service
    

Tech Stack Used

- Strapi CMS (v5)
    
- Docker
    
- AWS ECR (Elastic Container Registry)
    
- AWS EKS (Elastic Kubernetes Service)
    
- Kubernetes
    
- Node.js
    
- SQLite (for development)
    

Project Structure

- Dockerfile – Used to build the Strapi Docker image
    
- strapi-deployment.yaml – Kubernetes Deployment configuration
    
- strapi-service.yaml – Kubernetes Service (LoadBalancer) configuration
    
- package.json – Strapi application dependencies and scripts
    
- config, src, public – Strapi application source files
    

Steps Performed

1. Local Docker Setup
    

- Created a Dockerfile for Strapi
    
- Built Docker image locally
    
- Ran Strapi container on localhost (port 1337)
    
- Verified Strapi Admin panel locally
    

2. AWS ECR
    

- Created an ECR repository
    
- Tagged Docker image
    
- Pushed image to AWS ECR
    

3. AWS EKS Deployment
    

- Created EKS cluster
    
- Configured kubectl access
    
- Deployed Strapi using Kubernetes Deployment
    
- Created LoadBalancer service to expose the app
    

How to Run Locally

1. Build Docker Image  
    docker build -t strapi-dev .
    
2. Run Container  
    docker run -p 1337:1337 strapi-dev
    
3. Access Application  
    Strapi Admin Panel:  
    http://localhost:1337/admin
    

Environment Variables Used

- NODE_ENV
    
- HOST
    
- PORT
    
- APP_KEYS
    
- JWT_SECRET
    
- ADMIN_JWT_SECRET
    
- API_TOKEN_SALT
    

Learning Outcomes

- Hands-on experience with Docker containerization
    
- Understanding of Docker image lifecycle
    
- Real-world AWS ECR image management
    
- Kubernetes deployment and service exposure
    
- Practical experience with cloud-native application deployment
    

Conclusion  
This project demonstrates an end-to-end workflow starting from local development to cloud deployment using modern DevOps tools. It reflects practical knowledge of Docker, AWS, and Kubernetes beyond basic usage.
