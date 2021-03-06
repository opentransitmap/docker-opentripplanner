OpenTripPlanner Docker image
============================

This project contains a Docker image for stable
[OpenTripPlanner](http://opentripplanner.org) releases.

## Usage

The `otp` command is available as a shortcut for `java -jar otp.jar`:

    docker run \
        -e JAVA_MX=2G \
        -v $PWD:/data:ro \
        -p 8080:8080 \
        opentransitmap/opentripplanner \
        start.sh --build /data --inMemory

After the graph has been built, the planner is available at port 8080.

### Environment variables

**JAVA_MX**: The amount of heap space available to OpenTripPlanner. The default
is 1 GB.
