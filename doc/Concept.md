# Minikube vs K3d vs Kind

## Minikube

**Purpose:** Minikube is designed to provide a single-node Kubernetes cluster on a local machine. It's primarily used for local development and testing of Kubernetes applications.

**Use Cases:**
Ideal for developers who want to quickly set up a local Kubernetes environment for testing and experimenting with Kubernetes features or developing applications.

## K3d

**Purpose:** k3d (K3s in Docker) is designed to provide lightweight, multi-node Kubernetes clusters using Docker containers. It's optimized for local development and testing.

**Use Cases:**
Suitable for developers who want to simulate multi-node Kubernetes clusters on a single machine for testing distributed applications, networking, and high availability scenarios.

## Kind

**Purpose:** kind is designed to provide Kubernetes clusters using Docker containers as "nodes". It's focused on testing Kubernetes itself and validating Kubernetes configurations.

**Use Cases:**
Best suited for Kubernetes developers and contributors who need to test Kubernetes itself, validate Kubernetes configurations, or run automated tests on Kubernetes clusters.


## Comparison Table

|                           | Minikube                  | kind                            | k3d                                                         |
|---------------------------|---------------------------|---------------------------------|-------------------------------------------------------------|
| Supported OS              | Windows, MacOS, Linux     | Windows, MacOS, Linux           | Windows, MacOS, Linux                                       |
| Architecture Support      | amd64, arm64              | amd64, arm64                    | amd64, arm64                                                |
| Automatisation            | Yes                       | Yes                             | Yes                                                         |
| Additional Functions      | Dashboard, metrics server | Integrates with debugging tools | shipyard-run for complex environments, Metrics (Prometheus) |
| Single/Multi node cluster | Both                      | Both                            | Both                                                        |
| Multi Cluster Setup       | Yes                       | Yes                             | Yes                                                         |
| Min CPU                   | 2                         | N/A                             | 1+                                                          |
| Min Memory                | 2GB                       | N/A                             | 512MB                                                       |
| Container Runtimes        | Docker, CRI-O, containerd | Docker                          | Docker, containerd                                          |
| Podman use                | +/- (experimental)        | +                               | +/- (experimental)                                          |


**Summary:** Minikube, k3d, and Kind are all useful tools for local development and testing with Kubernetes. 
Minikube is best suited for simple local development with one cluster, k3d is suitable for lightweight multi-node clusters on a single machine, 
and Kind is focused on testing and validation of Kubernetes configurations.

In our case **K3d** is suitable solution, as it's lightweight and developed for the beginning to support multi node and multi cluster environment.
K3d doesn't provide most of the handy features that the minikube CLI provides, but If you are a more experienced developer, 
you probably work with kubectl very efficiently and know other tools from the ecosystem like Helm or Kustomize.

## Example of using K3d with simple app:

[![asciicast](https://asciinema.org/a/JI9NhDCZaKvqLm0Zxe5DC39j9.svg)](https://asciinema.org/a/JI9NhDCZaKvqLm0Zxe5DC39j9)