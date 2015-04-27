#!/bin/bash
#===============================================================================
#          FILE: install-cronjob
#         USAGE: ./install-cronjob
#   DESCRIPTION: post install configure AsyncMediaServerProcessClientApp
#       OPTIONS: ---
#       LICENSE: AGPLv3+
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Yossi Papiashvili <yossi.papiashvili@kaltura.com>
#  ORGANIZATION: Kaltura, inc.
#       CREATED: 30/03/15 19:11:34 EST
#      REVISION:  ---
#===============================================================================

UPLOAD_XML_DIR=$1
ASYNC_CLIENT_APP_DIR=$2
LOG_DIR=$3

flock -n $UPLOAD_XML_DIR/uploadCron.lockfile -c "php $ASYNC_CLIENT_APP_DIR/src/asyncMediaServerProcessScript.php \
    $ASYNC_CLIENT_APP_DIR/configurations/config.ini >> $LOG_DIR/uploadLog.log"
