#!/usr/bin/env bash

#---------------------------------------------------------------------------------------------------
# Configure AWS Region
#---------------------------------------------------------------------------------------------------
aws configure set default.region ${region}

#---------------------------------------------------------------------------------------------------
# Init Metadatas
#---------------------------------------------------------------------------------------------------
TOKEN=`curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 1800"`
INSTANCE_ID=`curl -H "X-aws-ec2-metadata-token: $${TOKEN}" --retry 5 -q http://169.254.169.254/latest/meta-data/instance-id`
