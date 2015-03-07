###############################################################
## Dockerfile to build a Debian Wheezy image with rvm, ruby  ##
## and bundler                                               ##
###############################################################

# Pull base image
FROM debian:wheezy
MAINTAINER djlebersilvestre (djlebersilvestre@github.com)

# Install basic applications
RUN apt-get update && apt-get install -y \
  procps \
  curl \
  vim

# Default environment variables
ENV RUBY_VERSION 2.2.1
ENV PATH /usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Download RVM with Ruby
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
RUN curl -sSL https://get.rvm.io | bash -s stable --ruby=ruby-${RUBY_VERSION}

# Setup RVM scripts
RUN echo "source /usr/local/rvm/scripts/rvm" >> /etc/bash.bashrc

# \o/
RUN echo "Ready to go! Type 'ruby -v' to see the version." >> /etc/bash.bashrc

