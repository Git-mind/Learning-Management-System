# https://hub.docker.com/_/microsoft-dotnet
FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR .

# copy csproj and restore as distinct layers
COPY *.sln .
COPY *.csproj .
RUN dotnet restore

# copy everything else and build app
COPY *. .
WORKDIR .
# RUN dotnet publish -c release -o /app --no-restore
RUN dotnet build

# # final stage/image
# FROM mcr.microsoft.com/dotnet/aspnet:6.0
# WORKDIR /app
# COPY --from=build /app ./
# ENTRYPOINT ["dotnet", "aspnetapp.dll"]