#!/bin/sh
set -x
NAME=$(basename $0)

kludge(){
  ls -lR /run
  chmod 700 /run/tor/service
}

(sleep 10; kludge) &

exec "/app/${NAME}" ${@}
