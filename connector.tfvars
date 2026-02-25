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
    server          = "https://953ED157C7D850E912A22EE10CACCB59.gr7.us-east-1.eks.amazonaws.com"
    ca_data         = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJSWNKVzJwWDhGSmN3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TmpBeU1qVXhNVEl3TWpoYUZ3MHpOakF5TWpNeE1USTFNamhhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUUN2VURLbGE1NFBmVUpNVXpWSitUUFJFYnpXb1pSODVEZEJudHN4QmxxQUpkMlV4bGJKL09hMmNrZXoKM3RYdkgwR0F5SU9QNSsxL3RjV2ZwaWJaVDJJMlc4TEsvOS9ndE9NM2Vabm9oNHB2OWZ0QWUwWFdhUU9WNkFFTApscm9qdEpyU2FSY29RMnZISmZYUmdoUm9ycXFhNWVnckRwOHVVN2JVZ0twWG5HUjA3dVBCeGlLL01aTVRBZ1hqCmRHYkhMdEpqREtueFcvOTR2SkdKejI2YlRkbmh6MU50WENnY0RuUFNHOVBGazNvZ3h1WWVLZFp4T1loUHA3N04KaDM4ZnNjZmV3aUxvVi9LTzJFTWNaY2JGVHFLWDNvaHdXbkphSzBYLzUvRk9uTFdzWEp5REZ1ZU9JODZYY0czZApKeU8zbUxYTUpxQWVYS0RJYll3SEpIRmJXVUtkQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJUZ1pvU01ZdElLL0ZPUXVGTjlEYzk5djhSYUZqQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQ2N1aVVXVGUxOApvQVQ3d016eStXbTN3cEY1Vi8wZFNiS2NqSHN5UDRZcEw4YjlVRzIxdG9Sa1NmZVE1ZGN3UFZZZVJQL2dCK3QzCkZZRG13M3RZbDY1amM2dmZNR2RndVFOYlpBTVdsQ1I0MUFaZWV4UHlzc254ZldUOFFpcWlNY0wwWC9tdTBwTzYKRWJRWlBCaXU0bTJQQ1JqbHU0RTVMRUxRQTdBU05oTUJjVksyT0ZPejR3SlZmNWlYcnloT2JmcnFpUDBsRU4zNwpya3EvQjFlSXRsSlhyMitXbVYwNW9OUVgydkZza3Q2WlArclByWXk4MW94ZVFLTGhjQlZLU2QrYzJIUXNPamRpCnJiRWNaKzdYS042Q3BlZ2xhMHdGVXlGank1ZFd5T2NzQ1RUbElWZFZweDdjdmRxZndRd1hUd0xEb1gva25GSXAKY29XNHE4UjVWb3N3Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
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
