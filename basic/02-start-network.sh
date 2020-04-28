#!/usr/bin/env bash
set -eu

source 00-common.sh

for A in */torrc; do
	echo $A
	if [[ "$A" == *"relay1/"* ]]; then
		$tor_bin -f $A --quiet &
	else
		$tor_bin -f $A --quiet &
	fi
done
