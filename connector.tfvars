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
    server          = "https://447CF89889E2EA75280A386644BCBEF7.sk1.us-east-1.eks.amazonaws.com"
    ca_data         = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJVFBFR3AySkp4elV3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TmpBeU1UTXhNelExTXpaYUZ3MHpOakF5TVRFeE16VXdNelphTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURadEwxc3IwODZJTmVXMmM2dTRVTGJ4cENhTUdDUTZkRjBRL0svclNpcEFqR0h6K09QQTlOT29EMjcKUjlqT1NFUEpuQytKRWo3ZS8vZTdwa2ozMnFWVlh5RWh6K3R3WGtjQjZJa3dZdHNDVEUyY2VGVnU3NGNrcEVVeQpsYURGVjBTWmE4VFA4S1RPYk5KcUIzYWhMQkI4d05zTWlYOHlFV3RKWU9qQjFnL2lvNFkvbksxRUtlL2JGOHBwCnU3M2h3RzB4anRrMWJienpiV3lkbkljSWhkUGVEUHRpbGQ3ZHd6RzVFUVROcWZ5blVoTzZaakVKU0Q3QUwwMGQKZnFnUm9mNTJ0aXF4YlBlU1ppTXl6R3dkMGlIbUo1eThES3Q5NkVFenFZMFRqZkw4R3JhdTRaSTZGem02MFFldQpUYzAwN0FtOWJsTVdZTStpNW5SZlRpMjVUa2FWQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJUZVZHMTljVjRBNk5tazVHL3g3NGJIYnFkdHlUQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQmVKRFovODJVSApFQWNQVFpMVElYSTIxSmthT1JBZ2trbVlVdVNDWk1tdExaLzJ3elpUTXNwNlNGcjR4dytwRG5nd24rRFZKc3pvCjd2cDZFMVcwdjBIRnBab2c3b0thcGlCbjV0bjNpckJXa2dKcWFVZVJKY3g1MUsrMG1FbkhvbDhZRFRSdkV4dVAKa2grQTZRZEtvRGYyTjJBNXBicDhsY3RTbFRtd05ncWtZOTkwcXZIWVJLQ2U0VWRYN1ZENUdPdHYzblJhdjF2RQpMOEdGV3BsRkcxZWJyQ0tNRGRjWEZ5V2dnTmhwalZRYmt2ZGRucTA3M1NUa29YZHArR2dNdnk1SC9XUSt4MFBKCi9LOUpkRENOUjFuZlJSMFNRR2VYUlVTQmk5UUluaGw3aXd5WlJ1dHNCZlhsNUpsUkpYNVdVQStNYTFJOWRrUUEKd1QyUytxUlBRMkE1Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
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
