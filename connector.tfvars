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
    server          = "https://4432081D666DB5943B69C767F1E14BA3.gr7.us-east-1.eks.amazonaws.com"
    ca_data         = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJSXNVeHN6WU0yVVF3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TmpBeU1URXdOelUyTkRKYUZ3MHpOakF5TURrd09EQXhOREphTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUUMrbEpMOHpHNjVUQkpUR0NuYlEvbjFJbmN5VlZxSE5KVGpaRUQ4VDhNaWRUYVBpaWUyU0ZEajlGU08KU1kySFdhdytjOXVPM1NYU0k4eUhOb2toNFNUaVdjd0oxaXdXL2RMM3VSOTdERFJwc01oWEF4a215MTYzeVZqMgp0VXNMelU4emVRNHNqQlJkbnJnVjkrQTNPZElheDNJZ1lhRUw5czFFS1hJVzJVNE9oQlRGVkZQRU5MOE1lalArCkIxTHFOZ1dOWkIyYUlUNUpTdTNHek1oK0hYMnpOTmNiSTFVQU05MEZTY1FqV3E4ZzZDZktDTDJQTTB2Z0RtVGsKQnVHRnpjWnF2QllxWi96dWFaUGMvTm5ZMzk5bmxNZ3lwVUV0ci9oaG9TUFQyYlpoYW45U3JzZGU4YWVQZVY2SQptZGlESGU3N1RKeisvY0xNL3VMbzU4aE5kci9UQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJSVURvODFZUU1WRE9CYzdDZDhQRytXcWJ2Z3dEQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQUhwRU15V0k2bApZYW1XNmJITW5nN2E3OVp5MFN1MmsraXhJajFiSGgraFppbytCWnVFNk9pNHRIZldTUU5yTmlBeStwT3lMRTQwCngzM29zZm1jMUhpODBWWVNISFpNcTYvVGdVL3BUK1VrRGtvY1k2ZS8wNE1PRGFnQ1JrR1NKczhFNkI4YlF4SjAKVXpQc0VvVHMrTWVMNkhNbkVtNXArcC8ySHNteFFuTUdtdGxMcGNKNFdGUGFZWDBxbDBKWU9XUlhEc0Fvc0JNQwp5NEVXV0kyQ1p0M1BnbllUZHcyc0NDM0o3SDRvMVdIVzkyS3FLRWhWRm1ldFlDMnQvTVRIVVlvSEMwTXpXeURQCnNjUk8ydjgrYWVUbVdXVDJjdDQvc2JqRC8yWnBxT21lL09zUVNHOHlCd0ZMWDMvYnZ3UzEvbkhsSWlBSVJkenUKMEk3VENyVUJQVGc1Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
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
