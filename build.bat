@echo off
echo Building FoodMap for Visual Studio 2022...
echo.

REM Clean previous builds
echo Cleaning previous builds...
dotnet clean FoodMap.sln

REM Restore packages
echo Restoring NuGet packages...
dotnet restore FoodMap.sln

REM Build the project
echo Building the project...
dotnet build FoodMap.sln --configuration Release

if %ERRORLEVEL% EQU 0 (
    echo.
    echo Build successful! 
    echo The executable is located in: FoodMap\bin\Release\net6.0-windows\
    echo.
    echo To run the application:
    echo FoodMap\bin\Release\net6.0-windows\FoodMap.exe
) else (
    echo.
    echo Build failed! Please check the error messages above.
)

pause 