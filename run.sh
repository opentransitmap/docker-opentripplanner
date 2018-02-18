#!/bin/bash

exec java -Xmx"$JAVA_MX" -jar /usr/local/share/java/otp.jar "$@"

#java -Dlogback.configurationFile=/opentripplanner/logback.xml -Xmx3G -jar otp-1.3.0-SNAPSHOT.jar --server --insecure --graphs /opentripplanner/graphs --autoScan --autoReload
#java -Xmx2G -jar otp-1.3.0-SNAPSHOT.jar --build /opentripplanner/graphs --inMemory
