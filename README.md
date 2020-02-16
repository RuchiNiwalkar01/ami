# AWS AMI for CSYE 6225

##Validate Template
packer validate ubuntu-ami.json


##Build AMI

packer build \ 
	-var "aws_access_key=${aws_access_key}" \
	-var 'aws_secret_key=${aws_secret_key}' \
      	-var 'aws_region=${AWS_REGION}' \
       	-var 'account_ids=${account_ids}' \
       ubuntu-ami.json
