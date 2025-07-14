# Edward Larkey

## Technical Summary

Languages  
Go, Python, Bash, PHP, SQL, LaTeX

Technologies  
AWS, Kubernetes, Grafana, Loki, Mimir, Wireguard, Tekton, Ansible,
Terraform, aws-cdk, Docker, Git, Vim

Operating Systems  
Linux, Mac OS X

## Projects

### robin-deploy (Robin)

- Wrote custom deployment program in Go that takes a json config file
  (secret path, env vars, resource requests/limits, etc), syncs secrets
  from AWS Parameter Store or Secrets Manager, and directly updates
  kubernetes resources like deployments and services.

### HAProxy Implementation (Hudl)

- Set up HAProxy cluster for our internal users and systems access and
  manage resources in EC2 classic, our internal VPC, and our production
  VPC.
- Service discovery with DNS SRV records and Route53 Auto-Naming/AWS
  CloudMap.

## Work Experience

### Robin - Boston, MA - Remote in Omaha, NE

- Principal DevOps Engineer: March 2025 - Present

- Staff DevOps Engineer: February 2023 - March 2025

- Senior DevOps Engineer: June 2021 - February 2023

  - Managed production and development systems in AWS (EKS, EC2,
    ElastiCache, S3, IAM, RDS, etc.)
  - Developed new deployment pipeline for Kubernetes with a custom Go
    program and SNS
  - Implemented and migrated to Okta for SSO (AWS SSO, OIDC at ALB for
    non SAML apps)
  - Migrated CI/CD for infrastructure to GitHub Actions

### HackerOne - San Francisco, CA - Remote in Omaha, NE

- Infrastructure Engineer II: September 2019 - June 2021

  - Managed production and development systems in AWS (EC2, ElastiCache,
    S3, IAM, RDS, etc.)
  - Planned and rolled out new infrastructure in AWS in accordance with
    compliance and security policies
  - Mentored co-workers in leveling up AWS and infrastructure skills

### Hudl - Omaha, NE

- Infrastructure Engineer II: July 2017 - September 2019

  - Managed production and development systems in AWS (EC2, ECS,
    ElastiCache, S3, IAM, RDS, etc.)
  - Mentored co-workers in leveling up AWS and infrastructure skills

### Cerner - Kansas City, MO

- System Engineer: August 2016 - July 2017

  - Developed and maintained Chef cookbooks with peer review for 4
    environments/regions
  - Deployed code to production and implemented Rundeck to automate
    those deployments

### Builder Designs - Olathe, KS

- PHP Developer & Linux System Administrator: September 2014 - August
  2016

  - Developed new websites and new products to client specifications
  - Implemented migration to DigitalOcean for all new hosting,
    configuration management with Ansible

## Education

### University of Missouri

- Bachelor of Arts in Anthropology: May 2012

  - Minor in East Asian Studies
