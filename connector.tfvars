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
    server          = "https://6DFAAAE5B56F8F96F403CC6A4B10A415.gr7.us-east-1.eks.amazonaws.com"
    ca_data         = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJRU5OdlN2SGpsb3d3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TmpBeU1qWXhOVE0xTURaYUZ3MHpOakF5TWpReE5UUXdNRFphTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUUNzYk9qeTVuZTI3WkI2SnFRd1h0TzJNNnhrSmRFNWc3RWxTbDFhcDc0MFZlbmowRDBUQjluUzJaeUkKM1VsT2hmZTMvU3UzbHBPWDFzTmphUkwwaUJBSStmMFpwVTd2WkE3ZnhNdE1kNlV5aUpsQ3IyeGNSU2NaTzNKZApEb3k5NHd5ZDB6N1dSYXlXWDRtYWtOb25xdG01cjEwTTQ1SW0wazljUzdEUnJPbFNRM1g3TTh1SkNEdVZwVTN6CjJyTjBuaFZsWnM5enN2ckZYVkdzQi9sR3crVTFRUVhaZ1UxOWlsUVBmTitGdE5XMUU3bHZ1Mmw1M3VGRm1GdTQKOEtiUDZseUl0alhLSmFTL2w4SkVUVFY3TEdqZDlzN00ydjNVNHl0NlMxV0hnZ3dTRy93bWtFZHFCL1lxWjR2dgpOUjhVNzNtS0lENm03QncrQVVoeThOYjkzaThuQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJTVjdBRC9ncEhNak9wMVBPa0d0cjFFbVJyWkZEQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQnljY0lTakRsSgp1REF3Rm9QOVpOV3R5UEJPc292TVNibkd4U21ML1A0NW5xMm45aVU0bGRkWklSckM5WktYb3VQUnBjLzg3WkkvCjRSTnhVbm1GSWtIdmhZdi9mZitUbWQ1R0dMMDd2ck12R2pibHFDTFNXcWk2MTErZXoxNXh3dndzRFZGSEhuWk8KVUV3ZkZ6anJZNEpBQmx3TGQ5b3o4ZTdLNTE5ck5lczF1aU1TUEIrcXBSQUcvUTlNYmF3ZklENXM0aXNlSEZEMwpuZGRJTmdKbVcrTkl4QU45UXR1dThhMmcvUUhTZ20rOVpja29LZHgrY1FRa2FUS3NxMERHUjU2c1UzVUo0bGRvCnJzbHFaQ3BzN0c5all6TnpLdnZYT2hJSnViY2psdjQrRWh4L1JDdnNTYVM1REdudUsvVTRVemRMS05qWGt5a1UKTjFaSVQwV3I4VmFVCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
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
