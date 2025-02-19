#!/usr/bin/env sh

set -e

COMMAND=${1}
REGION=${2}
INSTANCE_ID=${3}

if [ -z "${COMMAND}" ] || [ -z "${REGION}" ] || [ -z "${INSTANCE_ID}" ]; then
    echo "Error: Please include all required parameters" >&2
    echo "Usage: ${0} COMMAND REGION INSTANCE_ID"
    exit 1
fi

aws ec2 "${COMMAND}-instances" --region "${REGION}" --instance-ids "${INSTANCE_ID}"
