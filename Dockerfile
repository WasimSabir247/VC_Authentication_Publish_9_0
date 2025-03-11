#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
WORKDIR /app
EXPOSE 90
FROM base AS final
WORKDIR /app
COPY . .
ENTRYPOINT ["dotnet", "VC_Auth.dll"]
