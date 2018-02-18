FROM openjdk:8-jre-alpine

ENV VERSION=1.2.0 \
    JAVA_MX=1G

RUN apk update
RUN apk add wget ca-certificates bash
RUN update-ca-certificates

# Get OpenTripPlanner
ADD https://repo1.maven.org/maven2/org/opentripplanner/otp/$VERSION/otp-$VERSION-shaded.jar /usr/local/share/java/
RUN ln -s otp-$VERSION-shaded.jar /usr/local/share/java/otp.jar

# Prepare data directory
RUN mkdir -p /data

# Prepare script to be started when container comes up
ADD run.sh /run.sh
RUN chmod +x /run.sh
ENTRYPOINT ["/run.sh"]

EXPOSE 8080
