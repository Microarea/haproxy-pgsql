#!/bin/bash
VIP=$1
VPT=$2
RIP=$3

if [ "$4" == "" ]; then
  RPT=$VPT
else
  RPT=$4
fi

STATUS=$(PGPASSWORD="$PG_MONITOR_PASS" /usr/bin/psql -qtAX -c "select pg_is_in_recovery()" -h "$RIP" -p "$RPT" --dbname="$PG_MONITOR_DB" --username="$PG_MONITOR_USER")

#echo "$@ status=$STATUS"

if [[ "$STATUS" == "f" ]]
then
  exit 0
else
  exit 1
fi
