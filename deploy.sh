#!/bin/bash

if [ -f .env ]
then
  export $(cat .env | sed 's/#.*//g' | xargs)
fi

echo $MASTER_USER_PASSWORD

aws cloudformation deploy \
  --stack-name validation-server-infrastructure \
  --template-file template.yml \
  --parameter-overrides 
    BackendMasterUserPassword=${BACKEND_MASTER_USER_PASSWORD} \
    DBSubnetGroupName=${DBSubnetGroupName} \
    S3BucketName=${S3BucketName} \ 
    EcrRepositoryName=${EcrRespositoryName} \ 
  --capabilities CAPABILITY_NAMED_IAM 
