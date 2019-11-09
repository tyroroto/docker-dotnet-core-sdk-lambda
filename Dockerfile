FROM mcr.microsoft.com/dotnet/core/sdk:3.0-alpine3.10
RUN apk add --update zip
RUN dotnet tool install -g Amazon.Lambda.Tools
RUN export PATH="$PATH:/root/.dotnet/tools"
