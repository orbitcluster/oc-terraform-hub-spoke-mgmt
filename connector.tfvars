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
    server          = "https://149855B0733557BDEB317EEFA499E444.gr7.us-east-1.eks.amazonaws.com"
    ca_data         = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJTGtNMlNUQXFpQ3d3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TmpBeU1qTXhNRE15TVRGYUZ3MHpOakF5TWpFeE1ETTNNVEZhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURTazRXTGpEVnRKMUNkNG04VkJ6RHl2ZDVnK3c0c0U1ejVVNjloNDBDd2doSkFxUEpJYXp2N2NzYmQKRFBTWXhRN2JpY1N5RDU1WU1wVTdQUWNPZGJPU0pSQkw3WDNTeFJYN1lIMFREZFpMUEVYMmFYaEFRRXdCb0VGVQpLaklwRkZMLzMraTBGUUdNb0dSV28xTXRTazVDZDBhVHFnalVDQ2o2cGhPOE1Sejc4UFVtbXlHaktLWkF4UzdMCm5oMGYrZGRtQ3hPYUNjMEV6OUlMZTFNOWVMeUs2NEJnVjE2ZEVyYXNDMXdwUE1mQmJOL0o2OFVOTFRxU2o2UVoKVXhtald3dmZ1RUdJS0tDTW1yM2g2Y2lzQXpuMUtYak92YW1ScXM2N3hmNzY0Y2ZUSFVpZ3dKcEd5OEorQnY4bApOTGR6aGx2aVp4R29xM1VhK0lHQkYxVGY4U2pWQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJURXYwdG1qNzFUSjdKdDM1ZlFCVjdBV0t3SDRqQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQzNkenpHalpQTQp6MnNhVHpacjlzd1JsR3Y5bTlmMFBFQmRhNzN3OVdMcndMQUlYazlXbEUxOXFpQkVKU0llQ3RONGl3NDVLR1hWCjlIQ1lraTJkV1o4NHVFcVpvOHc1L25pNHJkRTMycTM2Q0pJb3doK0tuVU1tbWptUnFVblRaTi96WW1xSUlBaUUKOXJvSHY5UDgvc1VnUXkvTTR1ZXhOYWJvbWJqNTBXRkM5TWtRZ2RmMC9rcU9UNHpCQm5xMUpOS1c4Y09GVDg4QQpNVVdhWWloSUVHaTIxZFlkRjg0bDRwYkFQTHY0c2FlMU1weFlxdzZUcENCdUcyazFYTEF5eW5FQjhXSEh0VGtwCmsvaE5rVTErLzNXRUZQNXM0aGs2UzZpMmIySTRpOVZtZTk0TEZRb2h0QnFVL0VGbGk1SVFMQTJZd2FsQVlZREkKY3M3NFh5d0hpcHdvCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
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
