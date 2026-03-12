#!/bin/sh

if [ "$UBUNTU_VERSION" = "24.04" ]; then
  echo "export FASTNETMON_DISTR_NAME='noble'"
elif [ "$UBUNTU_VERSION" = "22.04" ]; then
  echo "export FASTNETMON_DISTR_NAME='jammy'"
else
  echo "unknown $UBUNTU_VERSION - fail"
  exit 1
fi
