deploy-domain:
	aws cloudformation deploy \
    --template-file cfn-templates/sagemaker-domain.yaml \
    --stack-name sm-domain \
    --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM \
    --parameter-overrides \
        DomainNamePrefix='sm-domain-projects-enabled'

destroy-domain:
	aws cloudformation delete-stack \
    --stack-name sm-domain && \
    aws cloudformation wait stack-delete-complete \
    --stack-name sm-domain
