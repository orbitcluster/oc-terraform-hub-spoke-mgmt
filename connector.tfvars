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
    server          = "https://A618E0066B50E942A989E69C9C58843F.gr7.us-east-1.eks.amazonaws.com"
    ca_data         = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJWEhPMUxyYjZEZDB3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TmpBeU1UTXdOVFV6TkRsYUZ3MHpOakF5TVRFd05UVTRORGxhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUUN6YzhLaVJ0MXQ1YUJUWUlGTVcrdXBtb1p2UGZMdUNRcjRBOElWR25JVVNQdXVqMzlQZlVJZkx1UXoKNDFxRlJZQmR2cVFBZm9lcktLdjd4T3Q5ZXd6UkhocmErdWI2VGs0QXRTOVFWZlR2Ym8zY0FlT3Q3UzFiT0o0NQpTU2RhWXQyOGNWWFBpNGNYdUxxaUt3RHdzdzNDNGJVZXJpMml6WUpWZnd4QnZ3SDYwZUs0bEhXLzhjd1FwMlo3CjcxZnFIMGxZU0xvOGtkVVM3QkJDeDFnUERBeE9FVFRNMHhYOWxnR3hoUTNMVHh6LzJFMEZuMTZSS1R1Mm1HKzkKSVRNdkkyV2NNL3B0TkJyeXp4WW9pUzQwOUtnZFRtdUxQaFhrOVVKdjh0WnpQMGVVakQ0U0FDcXVkVlNGZklWUgo1TU9TWjdBOGZjL2Q0TXIvREs3bXVWbkdLaU9yQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJTSTVLd0wzcEZWTGNhc3VLZHN1WEdtUEd1QmZEQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQUNRQSs2M093UAovelRqekpQUWsza09IRmhxbmdhSHRJa09DYStiUlIwMERrWWh5bS81TzlTWlZUM0hzK0FDeW53Q01HdEJZNjBWCkk5TXg5L0RJalhYeWNLaUxXbHNXWVl5VGNWejJBWi9aUVhDYXRYbUhpV1g4eTNlSmR6aHVvcjFObzc3ZVlpaGUKVmVUZUNhbnczVGc5ekJySEV4bTNsMmlMQmR2OFQ1c0tOOG1qV3FraVRNdGV5MXZBZU5GeHZIWVY5RXlTZTJIWQpRdXFXMmM0S29aN2dnMy8wYTkrdEU1elIwTDAya2NJdVhuRklKaFlrVEdEOEpzYTZDYU1OOXdSS0hDSzVnNUhNCitNOTczRkFycEx1WHVWRThOdWlPMHc4elhpYmJIZmQ0U1hIY3dOb29iT21EYnNPWW1GSlZHYUdjS3pCTWlHQjQKQmZPdWRZTmJRQjlICi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
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
