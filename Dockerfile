# Use the official ASP.NET 9.0 runtime
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

# Set the environment variable to listen on the correct port
ENV ASPNETCORE_URLS=http://+:80

# Copy prebuilt files from the repository (ensure you have the correct path)
COPY . .

# Run the application
ENTRYPOINT ["dotnet", "VC_Authenticatio.dll"]