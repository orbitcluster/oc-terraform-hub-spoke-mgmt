# oc-terraform-hub-spoke-mgmt

Configuration repository for the OrbitCluster hub-spoke ArgoCD connector. Contains spoke cluster definitions and optional custom ApplicationSets.

## Structure

```
oc-terraform-hub-spoke-mgmt/
├── .github/workflows/ci.yml      # Calls connector module workflow
├── connector.tfvars              # Spoke cluster configuration
├── connector.tfvars              # Spoke cluster configuration
└── README.md
```

## Configuration

This repository is configured via `connector.tfvars`.

### Spoke Clusters

Each spoke cluster needs:
- `cluster_name`: EKS cluster name
- `server`: API server endpoint URL
- `ca_data`: Base64 encoded CA certificate
- `env`: Environment (`dev`, `qa`, `prod`)
- `argocd_role_arn`: IAM role from spoke's `argocd_spoke_role_arn` output

Example:
```hcl
spoke_clusters = {
  "dev-cluster" = {
    cluster_name    = "devspk-BU12345-APP67890-eks"
    server          = "https://XXXXXXXXXX.gr7.us-east-1.eks.amazonaws.com"
    ca_data         = "LS0tLS1CRUdJTi..."
    env             = "dev"
    argocd_role_arn = "arn:aws:iam::123456789012:role/devspk-BU12345-APP67890-eks-argocd-hub-assumable"
  }
}
```



## CI Workflow

- **CI/CD**: Uses reusable workflows from `oc-terraform-hub-spoke-connector` (referencing `v1.0.0` tag).
- **Custom ApplicationSets**: Defines appsets for teams (e.g., `custom-team-apps`) with Istio service mesh enabled by default (`istio-injection: enabled`).
