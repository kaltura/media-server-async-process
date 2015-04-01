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

PROPERTIES_FILE_PATH=$1;

. $PROPERTIES_FILE_PATH

. $BIN_DIR/utils/*

echo "installing asyncMediaServerProcessScript.php as cronjob"

install_cronjob  "* * * * *  $ASYNC_CLIENT_APP_DIR/bin/kaltura_async_uploader_cronJob.sh $PROPERTIES_FILE_PATH" root