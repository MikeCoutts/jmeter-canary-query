#!/bin/bash

#
# Requires three input parameters to be in the containers environment:
# dbsName
# dbcPassword
# runIteration
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

