#!/usr/bin/env sh

set -e

for REGION in us-east-1 us-west-1 ap-northeast-1 ap-northeast-2 ap-east-1 ap-southeast-1 ap-southeast-5; do
    echo "===================="
    echo "${REGION}"
    echo "===================="
    aws ec2 describe-instances --query "Reservations[*].Instances[*].[InstanceId, InstanceType, State.Name, PublicIpAddress, PrivateIpAddress]" --output table --region "${REGION}"
done
