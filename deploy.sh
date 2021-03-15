aws cloudformation deploy \
  --stack-name validation-server-infrastructure \
  --template-file template.yml \
  --tags \
    Project-Code=102213-0001-001-00001 \
    Project-Name=Phase-1-Prototype-Validation-Server-Infrastructure \
    Center=TECH \
    Tech-Team=DS
