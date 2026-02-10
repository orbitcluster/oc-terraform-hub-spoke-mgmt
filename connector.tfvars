################################################################################
# Spoke Cluster Configuration
# Define your spoke clusters and custom ApplicationSets here
################################################################################

region              = "us-east-1"
hub_bucket_name     = "oc-backend-hub"
master_s3_directory = "oc-eks-hub"

# GitHub Configuration for SCM Provider
github_org       = "orbitcluster"
github_app_topic = "orbit-deploy"

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
    server          = "https://XXXXXXXXXX.gr7.us-east-1.eks.amazonaws.com"
    ca_data         = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0t..."  # Base64 encoded CA
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


