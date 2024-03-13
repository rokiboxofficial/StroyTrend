FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build-env
WORKDIR /StroyTrend

COPY ./src/StroyTrend/ ./
RUN dotnet restore
RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /StroyTrend
COPY --from=build-env /StroyTrend/out .

EXPOSE 5100
ENTRYPOINT dotnet StroyTrend.dll --urls "http://0.0.0.0:5100/"