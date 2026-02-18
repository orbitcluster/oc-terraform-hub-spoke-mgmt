################################################################################
# Spoke Cluster Configuration
# Define your spoke clusters and custom ApplicationSets here
################################################################################

region              = "us-east-1"
hub_bucket_name     = "oc-backend-hub"
master_s3_directory = "oc-eks-hub"

# GitHub Configuration for SCM Provider
github_org       = "orbitcluster"
github_app_topic = "testdeploy"

################################################################################
# Default ApplicationSets
################################################################################



################################################################################
# Spoke Clusters
# Add your spoke clusters here with their connection details
#
# Required values per cluster:
#   - cluster_name:    EKS cluster name
#   - server:          API server endpoint
#   - ca_data:         Base64 encoded CA certificate
#   - env:             Environment (dev, qa, prod)
#   - argocd_role_arn: IAM role ARN created by spoke cluster's custom-addons
#                      (use argocd_spoke_role_arn output from spoke deployment)
################################################################################

spoke_clusters = {
  # Development Cluster
  "dev-cluster" = {
    cluster_name    = "devspk-BU12345-APP67890-eks"
    server          = "https://CDAB3E00876BF232C70986131C6F792A.gr7.us-east-1.eks.amazonaws.com"
    ca_data         = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJSTMxZEhPeXBLLzh3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TmpBeU1UZ3hNRE01TVRaYUZ3MHpOakF5TVRZeE1EUTBNVFphTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUUM2VUZTc1dJVzRKWStNdU5lRXRVUWI5NnZNcmFKQTVrc1I2Q2tqNHdNdU5SajlyMDlQOUR0M1lsZFkKMC80Mk9RMTJnMzd3MHFvY1JPS0tKamZNcWIyQndwVUgzbG9vOXkyRUdmNUNwSFFlRGkzN1J5eklTWTIrTll5dAo4UlRrY0VNNzVkUHFCMWxsbDR1Y2R0a2k4TUtIa0VuWmY5QUdZNFM2VmRwMkJkditMaVBMMFhxWklGMUpRWXBhCnB1em4zUFErY292b25GT1ljYWdDdjloNVFIRUZad1oyZVVoV2o0dXdBM0FiamQ3aTE2VXBDYkNhR1g1YUFZc2EKU1Y0Mjh3bGl0ZEhCNWVjNkdNdmhtSHkyelVqdjZZM0JMOXo2T1lOOFlCTktRL0wzRDRpcDZzejR1WXVoT1hGUwpsN2RoOHA1UmxhQS9FTFdkQUEzWmc4aHJWa3UzQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJRTTcyYThKL0NVZmtDcUdYRWppYTAyWDVFcHZqQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQ1BaK0NnbjFNdgpUZnVKNlJHWVRZam1adXd5Y2wzTGtmNmlRZWRTZ29xOHljZmdwZVZIbU9UZk1NNkZTbHNUbkJBZkVBQVZ0UTBkCm9jYzVsdDRIQkdMU0EvVmZvWitKWmI2N00vMUhLYnJRaVZ6ZnYxZGZEWWUySmZCa2Z2NmYyblNBU0ZYekxjbHMKcG5Td0x1MGJobU9Ea0M0ZVFWWEFuOHY0NU1MWTVQcDlibmIxd0hFa1BjVmNETVpHc3Nqc0g5ZTlpT1Nsb2I2awordi9BYlZIM3JyRWJBQzAxTmJxNDBFUUVmd2JlMUxFdGJub1Q4Rmk1aVYvYytyZm1UNEtzSmZGeUJJWk44b1ROCjgrdmN1RXhNT2tsT1ErWjRnRHF0YXJKNWQvYVNuME1mdW15TlZ3b0hia3B3MmJnMVFlV0JlTG9sV0NqZ0hNNGcKb2R3TVEzdzladElWCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
    env             = "dev"
    argocd_role_arn = "arn:aws:iam::485646919618:role/devspk-BU12345-APP67890-eks-argocd-hub-assumable"
  }

  # QA Cluster
  # "qa-cluster" = {
  #   cluster_name    = "qaspk-BU12345-APP67890-eks"
  #   server          = "https://YYYYYYYYYY.gr7.us-east-1.eks.amazonaws.com"
  #   ca_data         = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0t..."
  #   env             = "qa"
  #   argocd_role_arn = "arn:aws:iam::485646919618:role/qaspk-BU12345-APP67890-eks-argocd-hub-assumable"
  # }

  # Production Cluster
  # "prod-cluster" = {
  #   cluster_name    = "prdspk-BU12345-APP67890-eks"
  #   server          = "https://ZZZZZZZZZZ.gr7.us-east-1.eks.amazonaws.com"
  #   ca_data         = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0t..."
  #   env             = "prod"
  #   argocd_role_arn = "arn:aws:iam::485646919618:role/prdspk-BU12345-APP67890-eks-argocd-hub-assumable"
  # }
}
