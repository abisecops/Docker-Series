# Use the official .NET SDK image for building
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build

# Set the working directory in the container
WORKDIR /app

# Copy the project file and restore any dependencies
COPY *.csproj ./
RUN dotnet restore

# Copy the rest of the application code
COPY . .

# Build the application
RUN dotnet publish -c Release -o out

# Use the official .NET runtime image for the final stage
FROM mcr.microsoft.com/dotnet/aspnet:7.0

# Set the working directory in the container
WORKDIR /app

# Copy the built application from the build stage
COPY --from=build /app/out .

# Expose a port (adjust as needed)
EXPOSE 80

# Set the default command (adjust if necessary)
ENTRYPOINT ["dotnet", "YourApp.dll"]
