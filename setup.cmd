mkdir src test

cd src

mkdir AzureFunctionsFileManager.Core AzureFunctionsFileManager.Infrastructure AzureFunctionsFileManager.API AzureFunctionsFileManager.SPA

cd AzureFunctionsFileManager.Core

dotnet new classlib -f netcoreapp2.1

cd ..\AzureFunctionsFileManager.Infrastructure

dotnet new classlib -f netcoreapp2.1

dotnet add reference ..\AzureFunctionsFileManager.Core\AzureFunctionsFileManager.Core.csproj

cd ..\AzureFunctionsFileManager.API

dotnet new webapi

dotnet add reference ..\AzureFunctionsFileManager.Core\AzureFunctionsFileManager.Core.csproj

dotnet add reference ..\AzureFunctionsFileManager.Infrastructure\AzureFunctionsFileManager.Infrastructure.csproj

cd ..\AzureFunctionsFileManager.SPA

dotnet new angular

cd ..\..\test

mkdir IntegrationTests UnitTests

cd IntegrationTests

dotnet new xunit

dotnet add reference ..\..\src\AzureFunctionsFileManager.Core\AzureFunctionsFileManager.Core.csproj

dotnet add reference ..\..\src\AzureFunctionsFileManager.Infrastructure\AzureFunctionsFileManager.Infrastructure.csproj

dotnet add reference ..\..\src\AzureFunctionsFileManager.API\AzureFunctionsFileManager.API.csproj

cd ..\UnitTests

dotnet new xunit

dotnet add reference ..\..\src\AzureFunctionsFileManager.Core\AzureFunctionsFileManager.Core.csproj

dotnet add reference ..\..\src\AzureFunctionsFileManager.Infrastructure\AzureFunctionsFileManager.Infrastructure.csproj

dotnet add reference ..\..\src\AzureFunctionsFileManager.API\AzureFunctionsFileManager.API.csproj

cd ..\..

dotnet new sln -n AzureFunctionsFileManager

dotnet sln add .\src\AzureFunctionsFileManager.Core\AzureFunctionsFileManager.Core.csproj .\src\AzureFunctionsFileManager.Infrastructure\AzureFunctionsFileManager.Infrastructure.csproj .\src\AzureFunctionsFileManager.API\AzureFunctionsFileManager.API.csproj .\src\AzureFunctionsFileManager.SPA\AzureFunctionsFileManager.SPA.csproj .\test\IntegrationTests\IntegrationTests.csproj .\test\UnitTests\UnitTests.csproj