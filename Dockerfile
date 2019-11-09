FROM mcr.microsoft.com/dotnet/core/sdk:3.0-alpine3.10
RUN apk add --update zip
ENV PATH="${PATH}:/root/.dotnet/tools"
RUN dotnet tool install -g Amazon.Lambda.Tools
RUN dotnet lambda
