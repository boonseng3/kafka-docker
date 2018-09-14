#!/bin/bash
set -eo pipefail

host="$(hostname -i || echo '127.0.0.1')"

if nc -z localhost 2181 ; then
	exit 0
fi
echo "Failed"
exit 1