#!/bin/bash

PHASE=$1
BASE_DIR="${BASH_SOURCE%/*}"
SCRIPT_FILENAME=`basename $0`

PLAYBOOK_EXTRA_VARS="base_dir=$BASE_DIR"
PLAYBOOK_FILE=${BASE_DIR}/setup.yml

ansible-playbook -vvvv --ask-become-pass \
  -i ${BASE_DIR}/hosts/$PHASE \
  -e "$PLAYBOOK_EXTRA_VARS" \
  $PLAYBOOK_FILE

