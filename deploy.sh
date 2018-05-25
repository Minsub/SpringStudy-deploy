#!/bin/bash

PHASE=$1
DEPLOY_GROUP=$2
BASE_DIR="${BASH_SOURCE%/*}"
SCRIPT_FILENAME=`basename $0`

PLAYBOOK_EXTRA_VARS="phase=$PHASE base_dir=$BASE_DIR deploy_group=$DEPLOY_GROUP"
PLAYBOOK_FILE=${BASE_DIR}/deploy.yml

ansible-playbook -vvvv --ask-become-pass \
  -i ${BASE_DIR}/hosts/$PHASE \
  -e "$PLAYBOOK_EXTRA_VARS" \
  $PLAYBOOK_FILE

