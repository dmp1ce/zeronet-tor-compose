#!/bin/sh

CONFIGURED=$(grep "#--CONFIGURED--" /tmp/torrc -c)

if [ $CONFIGURED -eq "0" ]; then
  if [ ! -z "$EXIT_NODES" ]; then
    echo "StrictExitNodes 1" >> /tmp/torrc
    echo "ExitNodes $EXIT_NODES" >> /tmp/torrc
  fi

  echo "#--CONFIGURED--" >> /tmp/torrc
fi

cat /tmp/torrc
/usr/bin/tor -f /tmp/torrc
