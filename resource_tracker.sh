#!bin/bash

##########################
# Author: Vishesh
# Date: 13th July 2023
#
# Version: v1
#
# This script will report the AWS resource usage
##########################

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users


# list s3 buckets
echo "Print list of S3 Buckets"
aws s3 ls > resourceTracker

# list EC2 Instances
echo "Print list of EC2"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list AWS lambda funtion
echo "Print list of lambda Funtions"
aws lambda list-functions >> resourceTracker:q!

# list IAM Users
echo "Print list of IAM Users"
aws iam list-users