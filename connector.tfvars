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
    server          = "https://26141F31809A254604584DD6E497FE75.gr7.us-east-1.eks.amazonaws.com"
    ca_data         = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJSkJESjV5TGJJaHN3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TmpBeU1UQXhNalF3TlRKYUZ3MHpOakF5TURneE1qUTFOVEphTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURjV0tyMk5wU29VMHIyMmVhZHhNcUJzTHRkMzQvYnRQVUdHQmF5ZG15VVhQTVZzRDQwU0xXYndzSVgKYmZXVU9EeTgzajJFWVY4MmwvOHBvRW5wNHhaOUVzZVhBNm5sYmVkVDlPZWl4VWNUQ1RadEttL1QvRDFUMVhJQgpwaHRmQzNFZmxyWDN3V1pNV3JGZm5rSkRLLzUvRUsrK2RzUTRBWWcrZ3krUTM5Y2FvRDc4SDZpbFFxTCtXMWh0Cm5wR094QXdlZWxLeHd6VUxNL3ozQlVEbE4rcGZiYkFLK3ZuMDBYcGF0TUpXRWR3eDdYb0dZYS9oUC8rSjZuSVMKcmZsNUNuMm5WUnJhQVNJY25xN3lpQnVMK01Lb3lvbXNQNXlkQWRSQkJteityL1NDKzBLcytJZ0w0R01zR0Rvagp4eUMyMlQ0NXVBK0lvVmRlWEpJay9oZFJWNmJsQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJTSWFzOTZ1ekRYODNIL3BEYkw1ekxCeStRVTBUQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQTNqWEhNMVh2TwoxdXpjdUUvOWU5R2IwQ2k5Z2UrM2ovMWdRRDZnQm9jbUFxVjBXVUdmbGRPVjdtUlNYYTJRZHViQjZKcUpyTk1YCmF1MnpjN0tnL3h3d0lUdEFtMXJXWG42WkVHaFArRFlLcEtSRUFaUmhJOVh3Z0NuakVDSFFYVnBmcW1wUk03K3kKRWhnajEzcmVKYjdwbUdFYVdpcURqQzRNVUduUWUxMmJ2NW1iNHp6V1F2S3Zwd0RPaG5RZWVHRkVTMUpLL0Qvbgo4eGJvUFhuaTVyS0pTUXk3WnFva2wvVDBUZjE0RzRyRXROb0dwVkIzTDVMOFhWN2lENzhiem5zVENkbG9kRnR0CkYxRTBWMnJjUXBIK1huRjY1RDA3WVpBS3JickF4WG1RQTMxMzFYMWhEVXBocXAwaStIN0d2ekhjTzcxZWhZdWcKM2ZrOUh6OWg0NStaCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
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


