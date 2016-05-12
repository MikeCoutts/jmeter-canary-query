#!/bin/bash

#
# Requires three input parameters: Teradata DBS, test iterations, JMeter Server
#
# Example: ./run_test.sh snorri 1 qd0048
#
# Note hard coding of /files/jmeterLongQuery.jmx 

/usr/bin/jmeter -n -t /files/jmeterLongQuery.jmx \
  -Gsummariser.name=JMeterSummary \
  -Gsummariser.interval=180 \
  -Gsummariser.log=true \
  -Gsummariser.out=true \
  -GdbsName=$dbsName \
  -GdbcPassword=$dbcPassword \
  -GrunIteration=$runIteration \
  -Rlocalhost
