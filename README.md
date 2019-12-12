# Helm Charts

These charts are actively maintained.

Each chart strives to **always** have an emphasis on:
  - Using Ingress with Let's Encrypt
  - Persistency
  - De-coupled services (using a separate database service)

## Installation

Add the repo!

```sh
helm repo add k8s-land https://charts.k8s.land
```

Install a test chart:

```sh
helm install gitea k8s-land/gitea
```

## List of actively maintained charts

- [Gitea](https://github.com/k8s-land/gitea-chart)
