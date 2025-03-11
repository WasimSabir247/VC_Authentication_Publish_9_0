#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
WORKDIR /app
EXPOSE 80

#FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
#WORKDIR /src
#COPY ["VC_Authentication.csproj", "."]
#RUN dotnet restore "./VC_Authentication.csproj"
#COPY . .
#WORKDIR "/src/."
#RUN dotnet build "VC_Authentication.csproj" -c Release -o /app/build

#FROM build AS publish
#RUN dotnet publish "VC_Authentication.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY . .
ENTRYPOINT ["dotnet", "VC_Authentication.dll"]