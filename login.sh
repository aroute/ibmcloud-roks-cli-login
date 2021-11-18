#!/bin/bash

source $(dirname $(realpath ${0}))/loginenv.sh

ibmcloud login --apikey "${IBMCLOUD_API_KEY}" -c "${IBM_CLOUD_ACCOUNT}" -r "${IBM_CLOUD_REGION}"
ibmcloud oc cluster config -c "${IBM_CLOUD_OPENSHIFT_CLUSTER_ID}"
oc login -u apikey -p "${IBMCLOUD_API_KEY}"
