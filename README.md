# AARDVARK GitOps (Argo CD)

This repo manages the aardvark FastAPI app via Helm and Argo CD, with separate environments (dev, qa, stage, prod).

## Structure
- helm/app: Application Helm chart (Deployment, Service, Route)
- envs/<env>/values.yaml: Per-environment overrides
- apps/argo: Argo CD Application manifests per environment
- clusters: App-of-apps for bootstrapping a cluster

## Usage
1. Create the argocd namespace and install Argo CD (or use OpenShift GitOps).
2. Point Argo CD at clusters/cluster-a.yaml to bootstrap the applications (app-of-apps pattern).
3. Each Application deploys the helm/app chart with environment-specific alues.yaml.

## Config
- Default image: quay.io/your-org/aardvark:1.0.0 (change in helm/app/values.yaml).
- Route is enabled by default. Set oute.enabled=false to disable.
- Container listens on port 8000 and Service exposes port 80.

## Adjust
- Update epoURL in pps/argo/*.yaml and clusters/cluster-a.yaml to this repository's Git URL after pushing.
- Edit nvs/*/values.yaml to control replicas, tags, and hostnames.
