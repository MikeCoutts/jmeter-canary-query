#!/bin/bash

#
# Requires three input parameters: Teradata DBS, test iterations, JMeter Server
#
# Example: ./run_test.sh snorri 1 qd0048
#
# Note hard coding of /files/jmeterCanaryQuery.jmx 

/usr/bin/jmeter -n -t /files/jmeterCanaryQuery.jmx \
  -Jsummariser.name=JMeterSummary \
  -Jsummariser.interval=180 \
  -Jsummariser.log=true \
  -Jsummariser.out=true \
  -JdbsName=$dbsName \
  -JdbcPassword=$dbcPassword \
  -JrunIteration=$runIteration \
  -Rlocalhost
