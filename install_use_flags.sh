#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
	echo "Must run this script as root." 1>&2
	exit 1
fi
this_dir="$(readlink -f "$(dirname "$0")")"

file="portage/package.use/uuid_boot"
ln -s "$this_dir/$file" "/etc/$file"
