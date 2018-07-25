FROM microsoft/dotnet:2.1-aspnetcore-runtime AS base
WORKDIR /app
EXPOSE 53223
EXPOSE 44339

FROM microsoft/dotnet:2.1-sdk AS build
WORKDIR /src
COPY BasicDockerApp/BasicDockerApp.csproj BasicDockerApp/
RUN dotnet restore BasicDockerApp/BasicDockerApp.csproj
COPY . .
WORKDIR /src/BasicDockerApp
RUN dotnet build BasicDockerApp.csproj -c Release -o /app

FROM build AS publish
RUN dotnet publish BasicDockerApp.csproj -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "BasicDockerApp.dll"]
