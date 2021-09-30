# validation-server-infrastructure

[Validation Server Whitepaper](https://www.urban.org/research/publication/privacy-preserving-validation-server-prototype)

CloudFormation stack for the validation server infrastructure.

To deploy (requires [AWS CLI](https://aws.amazon.com/cli/) to be installed and configured):

```bash
./deploy.sh
```

This requires an `.env` file with the following variables set:

```
BACKEND_MASTER_USER_PASSWORD
DBSubnetGroupName
S3BucketName
EcrRepositoryName
VpcId
```
## Infrastructure

* S3 bucket with Server-Side Encryption: `SYMMETRIC_DEFAULT` (AES-256-GCM) via SSE-KMS (alias: `validation-server`)
* RDS database instance running postgres engine with storage encrypted at rest and accompanying security group
* Elastic Container Registry repository for storing Docker images for the back-end system
