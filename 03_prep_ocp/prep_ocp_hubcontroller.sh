#!/usr/bin/env bash

# Write a "secrets" file like this:
## AWS IAM key goes here
#export AWS_ACCESS_KEY_ID=""
#export AWS_SECRET_ACCESS_KEY=""
#
## The private SSH key to access the instances 
#export SSHPRIVKEY="~/.ssh/keyname"
#
## For OpenShift Enterprise deployment, RHSM registration info goes here
#export ACTKEY="activationkey name"
#export ORGID="orgid"
#
## Token for Service Account to access RH Container Registry
## https://access.redhat.com/terms-based-registry
#export TOKEN_USER=""
#export TOKEN=""

# Source it to make env vars available: ". secrets"


time ansible-playbook prep_ocp_hubcontroller.yml -i inventory/inventory.cfg

# use this if you want to pass all extras vars
#time ansible-playbook openshift-playbook.yml -i inventory/inventory.cfg "$@"
