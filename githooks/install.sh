#!/bin/sh

#
# Coded by: KuuwangE < root@ql.gl > 
#

CURRENT_DIR=$(dirname $(realpath $0))
PROJECT_DIR=$(dirname `dirname $(realpath $0)`)
# HACK : This is Hacky Way to Get Project ABSOLUTE PATH Based On CURRENT FILE


mv $PROJECT_DIR/.git/hooks/pre-push $PROJECT_DIR/.git/hooks/pre-push.bak
ln -s $CURRENT_DIR/pre-push.sh $PROJECT_DIR/.git/hooks/pre-push
