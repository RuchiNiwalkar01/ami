# AWS AMI for CSYE 6225

## Pre-Requisites
Packer is a tool for building identical machine images for multiple platforms from a single source configuration.
Packer should be installed on your machine


## Validate Template
packer validate ubuntu-ami.json


## Build AMI
packer build \ 
	-var "aws_access_key=${aws_access_key}" \
	-var 'aws_secret_key=${aws_secret_key}' \
      	-var 'aws_region=${AWS_REGION}' \
       	-var 'account_ids=${account_ids}' \
	-var 'source_ami=${source_ami}' \
       ubuntu-ami.json
