#!/bin/sh

if [ "$1" = "/bin/sh" ]; then
  shift
fi

ARGS="start --none "

if [ -n "$NGROK_AUTH" ]; then
  ARGS="$ARGS -authtoken $NGROK_AUTH "
fi

exec /bin/ngrok $ARGS
