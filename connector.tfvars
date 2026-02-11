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
    server          = "https://FB660A1CD1AED34E2BD36A1D435CB42B.gr7.us-east-1.eks.amazonaws.com"
    ca_data         = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJVXN5anVXejd2KzB3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TmpBeU1URXhOVEk1TlRaYUZ3MHpOakF5TURreE5UTTBOVFphTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURNVUhyU3k2UDJCQkFjbGhnVEpHV0VqK2phNUdSamlVbnl3eHFxcFRobE9TWU1LK3VaTEdSMitqdjEKclB3dEtlUnY3QnhDU1E1UDBGNHNoVUNEb2tUa0ZXZEZaTzlwWi8vZk9hT1pQVElFMmdQcGNoNnVrbVdTYmxKZApWa0Y2NjlSLy9QWUJhZlBJRmdzL3RWeXhyVWlqL1JjUi9nZFludVVocG1tbWF1QithQjA2RERiK3JVcVJRVlN2CmdyMFQ0TXZ1ZjhzQjZSTzl4Y0xSVGNNbHhNaW4xL3NOUTRoYlkwQ2hlMVBybS9HUXFMTUo0TWtaT3hIU2I3VmUKU1V1TWMrelNHUk5XckIvR01OOURxVjdIWHMwa1VUUGRyQ2xQYzFWVDVFa3ExSkZxTzErVk0vZTJ6L3dQaEQxWgpFaVBORG16ZS9PTWExUmdsaXFvWTF0SUJsSzVYQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJRNGt2dHZUMmlYYysveHJsUXFjUmp1SlJ5SnpUQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQkVnbUNMMWxrMAoybzU4M3l4VDRDbFhTeTJpbVhXVDlMNlQxNXU2TXplejRHOHlwa0s0TTZzL2JLSVlnUlV6T1BSZkErYVhHVWhMCnh5QWs2eGpUYjdPUU9UVXJUK3VBKytISlZURjB6Y3ZSZktrQVE4Z1hNOHBKR0pod2pUQlRHTkkyeFppRTdsK20KczhEaHBmRy96RVFhRVl0TkFtbjdhQUsvMzZkZmFZNHVOL3o0dlVmRDBnV3VVT2x5MzZ2Q2s4eEJKN3JDVmYyawpwU2V4Vi9VN3ViSEZJbXluOC93NlZ5bG5rY2YxYVdqTFcvRVVqd0N1cGx2SlVnT0dYUWs0d2RxMllsWGs5VmpnCjhuL25wVXRHVjhES3hwdHFLb0gyYUdVNUFJZS9qT29OdTUwbC9ubUlCRnExSGR2U2tzNWtzM21na1ZiYWRURU4KSWFJdFR2OSsyRWpECi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
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
