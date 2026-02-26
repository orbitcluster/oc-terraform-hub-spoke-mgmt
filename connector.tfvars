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
    server          = "https://C5B5B47C962671E90FA0EE41037DB07E.gr7.us-east-1.eks.amazonaws.com"
    ca_data         = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJT3BWVHYzZDE2b0V3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TmpBeU1qWXhNREF6TWpkYUZ3MHpOakF5TWpReE1EQTRNamRhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURJb0NKZngzeG0vZ05tbEVuT0k5dk8vTjRTZWFma2wzNFlSMXo3WmxIQVZxTjNMRzRKdDFFRTZOdVQKbHpvZnU0WUpmQUxUSS9XYjRZbzBlTXhxbXJLVGlxanY0WWM4WXZETjl0c05waXJOYytiUG0waUFEaHJnRnRmKwpaWE95dzBKV2svSllFYktEcTJ2YXVDdzFJMld6ZXlQTW0rMmY5ZWdRTWcraTBtNDdZMjM3ZmpQNm5FR3h6RmNjCnpvQXAzalVsYmI0R21LTVd2a1JaUkZ1UmpNR1UxN2hzR3l4Z3RENTBrQzRLaFVnT1dKbG92NXlkaExnWHlFdGIKQXpqSENNckNkQVhrRGlvbis0TUxDYkc1YjhMcEN1RUhhSHZGRXNIblRBRVc3M20wd1lOa1U3UmFmUURESE9mVQphSWVQL21iVU5mdmYrYVNHTks4TWY1eXltU0RUQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJUZDJndTYxY0h4M3FMM20zcEg4cEs4SFdsdW5EQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQ01CVU5CMEwzNAp6dXJSWWVsMitVWHl6bkdHRDhIb1BnM3BZRHArcitQWmdXYUJGUW1WL04vaW15VGp2dTZpeTVIQmY5TFFXSVZ2CmtjcE5WaDB5RUZMQ2dBY0ZJSnhydWx3enFzNU9rMzdLN0ZOUUIxMzdiZnd0aDBNeERtK3VZTGE0QkM5OUgvaTMKQm12aW9oTEVncXhjR0NmcGFGUDZoOTRSWFgyblNKS21EN0ZkQTIrVkRuNVFZeUxuRGZwb2NmNXp4WWFIWGNnQQp2NzJXZ0FTRjcwUnlWY0ZtdTNFSUlSMEVYd0RqRlAvRGtibVFBNUhwd2tNMVNEeFR3QWg1WVYyeW40ZnJWU0dCClBvUk1IbzNrK2FUOUtvNit1NCtjYTU0R0laK0FGYXV2Z0wrQmU2Qk1HVDVYN1FGdFh2cWNlNjI4SUpQTUpsaHcKOHp0dmtMNUdXdXhjCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
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
