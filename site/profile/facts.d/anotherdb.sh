#!/bin/bash
HOST='facter hostname'

case $HOST in
  dfw)
    echo "anotherdc=dallas"
    ;;
  den)
    echo "anotherdc=denver"
    ;;
  *)
    echo "anotherdc=nodc"
    ;;
esac
