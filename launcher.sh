#!/bin/bash

if [[ "x$CMS_DB_PASSWORD" == "x" ]]
	then
	echo "environment variable CMS_DB_PASSWORD not set, aborting! "
	exit 1
fi

export CATALINA_OPTS="$CATALINA_OPTS -Dcms.db.password=$CMS_DB_PASSWORD"

catalina.sh run