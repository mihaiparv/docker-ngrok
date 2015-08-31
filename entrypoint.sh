#!/bin/sh

if [ "$1" = "/bin/sh" ]; then
  shift
fi

ARGS="start --none"

if [ -n "$NGROK_AUTH" ]; then
  ARGS="-authtoken=$NGROK_AUTH "
fi

case "$1" in
  -h|help)  ARGS=$1 ;;
  *)        ARGS="$ARGS -log stdout $* $FWD" ;;
esac

exec /bin/ngrok $ARGS
