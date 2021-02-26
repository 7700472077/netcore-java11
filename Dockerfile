FROM mcr.microsoft.com/dotnet/core/sdk:2.1 

RUN apt-get update -y \
    && apt-get -y --no-install-recommends install software-properties-common \
    && apt-get -y --no-install-recommends install openjdk-11-jdk \
    && rm -rf /var/lib/apt/lists/*
