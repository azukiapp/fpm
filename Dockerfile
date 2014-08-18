#
# FPM Dockerfile
#
# https://github.com/dockerfile/fpm
#

# Pull base image.
FROM dockerfile/ruby

# Install FPM.
RUN gem install fpm

# Install rpm tools
RUN apt-get update -y
RUN apt-get install -y rpm

# Define mountable directories.
VOLUME ["/data"]

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]
