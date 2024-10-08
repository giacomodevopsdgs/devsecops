# DevSecOps

## Demo K8s App Features:

- **GitHub CI/CD**: Automated continuous integration and deployment using GitHub Actions.
- **Conjur - GitHub Integration**: Secure handling of secrets in your GitHub workflows with Conjur.
- **Conjur - K8s Integration (ESO)**: Enhanced security through the integration of Conjur with Kubernetes using the External Secrets Operator (ESO).
- **Managed PostgreSQL Database (AWS RDS)**: Leveraging Amazon RDS for a fully-managed, scalable PostgreSQL database.
- **Seamless Password Rotation (CCP)**: Automatic and transparent password rotation using CyberArk Conjur’s Central Credential Provider (CCP).
- **Local (Docker) Client for Conjur and K8s Remote Host**: Running Conjur locally in Docker while interacting with a remote Kubernetes host.

---

## Enabler:

1. Set up self-hosted GitHub runner on a Linux server.
2. Add Conjur host API key and certificate as GitHub secrets.
3. Set up ESO [link](https://external-secrets.io/v0.5.7/guides-getting-started/).
4. Configure ESO for Conjur [files](./devops/conjur/).
5. Set up a Conjur follower on Kubernetes with JWT authentication.

### Local client
1. ```docker-compose -f .\compose.yml run conjur-cli```
2. login al conjur (da shall docker)
 ```bash
 conjur init -a dgsspa -u https://conjur-cluster.lab --self-signed
 conjur login - -u admin 
 ```
3. retrive config file (per ora chiedere a Giacomo) and place it in the project root

### Conjur
1. Add a secret for github integration to consume it;
2. Add a secret for k8s app to consume it via ESO;