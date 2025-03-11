#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.


# Use official .NET SDK to build the application
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /app


FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
WORKDIR /app
EXPOSE 80
FROM base AS final
WORKDIR /app
COPY . .
ENTRYPOINT ["dotnet", "VC_Auth.dll"]


