FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build-env

WORKDIR StroyTrend

COPY ./src/StroyTrend ./
COPY ./docker/MigrationScriptBuilder/ ./
RUN chmod +x /StroyTrend/entrypoint.sh
RUN dotnet tool install --global dotnet-ef
ENV PATH="$PATH:/root/.dotnet/tools"

ENTRYPOINT sh entrypoint.sh