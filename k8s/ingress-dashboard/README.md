# Exposing minikube dashboard with Ingress

This repository provides instructions for exposing minikube dashboard using ingress.

## Prerequisites

Before you proceed, make sure you have the following tools installed:

- [Kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/): The Kubernetes command-line tool.
- A running Kubernetes cluster. You can use [Minikube](https://minikube.sigs.k8s.io/docs/start/) for local development.

## Getting Started

Follow these steps to expose minikube dashboard with a custom domain name using ingress:

1. **Start minikube**
   ```bash
    minikube start
2. **Enable Ingress**
    ```bash
    minikube addons enable ingress
3. **Enable Ingress-DNS**
   ```bash
    minikube addons enable ingress-dns
4. **Wait until you see the ingress-nginx-controller-XXXX is up and running**
    ```bash
    Kubectl get pods -n ingress-nginx
6. **(OPTIONAL) Create check  kubernetes-dashboard namespace**
    ```bash
    kubectl get ns | grep kubernetes-dashboard
7. **Create dashboard-ingress int the namespace kubernetes-dashboard**
    ```bash
    Kubectl apply -f dashboard-ingress.yml -n kubernetes-dashboard
8. **(For MAC/Linux) Append 127.0.0.1 dashboard.com to your /etc/hosts**
    ```bash
    echo "127.0.0.1 dashboard.com" | sudo tee -a /etc/hosts 
9. **(For MAC/Linux) Open minikube tunnel (will ask for a password)**
    ```bash
    minikube tunnel 
10. **(For WINDOWS) Get the minikue ip**
    ```bash
    minikube ip
11. **(For WINDOWS) Add the minikue ip to the hosts file**
    ```bash
    C:\Windows\System32\drivers\etc\hosts
12. **Open Browser hit dashboard.com**


