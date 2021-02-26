FROM mcr.microsoft.com/dotnet/core/aspnet:2.2.8

RUN apt-get update -y
RUN apt-get -y --no-install-recommends install software-properties-common
RUN echo 'deb http://ftp.debian.org/debian stretch-backports main' | tee /etc/apt/sources.list.d/stretch-backports.list
RUN apt-get update -y
RUN apt-get -y --no-install-recommends install openjdk-11-jdk
RUN rm -rf /var/lib/apt/lists/*
