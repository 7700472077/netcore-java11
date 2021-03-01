FROM mcr.microsoft.com/dotnet/core/sdk:3.0.103

# RUN mkdir /usr/share/man/man1/
RUN apt-get update -y
RUN apt-get -y --no-install-recommends install software-properties-common
RUN echo 'deb http://ftp.debian.org/debian stretch-backports main' | tee /etc/apt/sources.list.d/stretch-backports.list
RUN apt-get update -y
RUN apt-get -y install openjdk-11-jdk
RUN rm -rf /var/lib/apt/lists/*
