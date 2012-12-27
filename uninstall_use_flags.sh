#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
	echo "Must run this script as root." 1>&2
	exit 1
fi

file="portage/package.use/uuid_boot"
rm -f "/etc/$file"
