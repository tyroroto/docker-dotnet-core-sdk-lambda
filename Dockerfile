FROM mcr.microsoft.com/dotnet/core/sdk:3.0.100-bionic
RUN apt-get update && apt -y install zip
ENV PATH="${PATH}:/root/.dotnet/tools"
RUN dotnet tool install -g Amazon.Lambda.Tools
RUN dotnet lambda help package
