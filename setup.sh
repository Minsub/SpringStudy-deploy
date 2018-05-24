#!/bin/bash

PHASE=$1
BASE_DIR="${BASH_SOURCE%/*}"
SCRIPT_FILENAME=`basename $0`

PLAYBOOK_FILE=${BASE_DIR}/setup.yml

# ansible-playbook -vvvv \
# 	# --forks=20 \
# 	# --private-key=${BASE_DIR}/files/ssh/id_rsa \
# 	-i ${BASE_DIR}/hosts/$PHASE \
# 	# -e "$PLAYBOOK_EXTRA_VARS" \
# 	$PLAYBOOK_FILE