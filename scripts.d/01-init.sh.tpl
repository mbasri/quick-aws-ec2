#!/usr/bin/env bash

#---------------------------------------------------------------------------------------------------
# EC2 Init
#---------------------------------------------------------------------------------------------------
yum update kernel -y
yum update expat -y
yum update --security -y

yum install -y wget telnet bind-utils awslogs jq docker python3-pip git unzip
yum remove -y awscli

curl https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o awscliv2.zip
unzip awscliv2.zip
./aws/install -i /usr/local/aws-cli -b /bin --update
rm -rf awscliv2.zip aws

#---------------------------------------------------------------------------------------------------
# Cloudwatch Agent
#---------------------------------------------------------------------------------------------------
yum install -y amazon-linux-extras
amazon-linux-extras install epel -y

wget https://s3.amazonaws.com/amazoncloudwatch-agent/centos/amd64/latest/amazon-cloudwatch-agent.rpm
rpm -U --replacepkgs ./amazon-cloudwatch-agent.rpm
rm -f amazon-cloudwatch-agent.rpm

/opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c ssm:${ssm_parameter_name} -s
