# validation-server-infrastructure

CloudFormation stack for the validation server infrastructure.

To deploy (requires AWS cli to be installed and configured):

```bash

./deploy.sh

```

## IRS 1075

[AWS Whitepaper](https://docs.aws.amazon.com/whitepapers/latest/internal-revenue-service-publication-1075-compliance-in-aws/internal-revenue-service-publication-1075-compliance-in-aws.pdf#welcome)
(updated 2021-02-24)

## Infrastructure

### S3 Bucket (ui-validation-server)

* Server-Side Encryption: `SYMMETRIC_DEFAULT` (AES-256-GCM) via SSE-KMS (alias: `validation-server`)
* Server access logging: Disabled (should this be enabled?)
* Bucket versioning: Disabled (should this be enabled?)
