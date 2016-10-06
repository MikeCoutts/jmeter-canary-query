#!/bin/bash

#
# Requires three input parameters to be in the containers environment:
# dbsName
# dbcPassword
# runIteration
#
# Note hard coding of /files/jmeterCanaryQuery.jmx 

/usr/bin/jmeter -n -t /files/jmeterCanaryQuery.jmx \
  -Gsummariser.name=JMeterSummary \
  -Gsummariser.interval=180 \
  -Gsummariser.log=true \
  -Gsummariser.out=true \
  -GdbsName=$dbsName \
  -GdbcPassword=$dbcPassword \
  -GrunIteration=$runIteration \

