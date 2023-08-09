# Kubernete Security Scanning Demo [![gitpod](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod&style=flat-square)](https://gitpod.io/#https://github.com/alfespa17/demo-k8s-tools-security)

This repository contains a gitpod workspace with the following tools that can be used to do static code analysis for kubernetes

- [kube-linter](https://github.com/stackrox/kube-linter)
- [kube-score](https://github.com/zegl/kube-score)
- [chekov](https://github.com/bridgecrewio/checkov)
- [snyk](https://github.com/snyk/cli)

Other validation for configuration options
- [kubeconform](https://github.com/yannh/kubeconform)

Two additional tools to scan kubernetes configuration that will require a real cluster to test.

- [kube-bench](https://github.com/aquasecurity/kube-bench)
- [kube-hunter](https://github.com/aquasecurity/kube-hunter)
- [trivy](https://github.com/aquasecurity/trivy)

## kube-linter

```bash
kube-linter lint pod/pod.yml
kube-linter lint pod/pod.yml --format json
```

## kube-score

```bash
kube-score score pod/pod.yml
kube-score score pod/pod.yml -o json
```

## chekov

```bash
checkov -d pod/ --framework kubernetes
checkov -d pod/ --framework kubernetes -o json
```

## Snyk

```bash
snyk auth [<API_TOKEN>]
snyk iac test pod/
```
# Other tools

## kubeconform

```bash
kubeconform pod/invalid.yml 
```

## kube-bench

```bash
kubectl apply -f https://raw.githubusercontent.com/aquasecurity/kube-bench/main/job.yaml
```

## kube-hunter

```bash
kubectl apply -f https://raw.githubusercontent.com/aquasecurity/kube-hunter/main/job.yaml
```