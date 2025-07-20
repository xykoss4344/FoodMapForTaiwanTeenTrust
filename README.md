# FoodMap Application

A Windows Forms application for tracking food supply status at animal shelters across Taiwan, with mobile-friendly features and interactive map visualization.

## Features

- **Interactive Map**: Shows animal shelter locations across Taiwan
- **Food Supply Tracking**: Visual progress bars showing food supply status
- **Mobile Support**: Touch-friendly interface with mobile optimizations
- **Color-Coded Status**: Green (≥21 days), Yellow (12-20 days), Red (<12 days)
- **Detailed Information**: Shows shelter details, food supply status, and other needs

## Requirements

- Visual Studio 2022 (Community, Professional, or Enterprise)
- .NET 6.0 SDK
- Windows 10 or later

## Building the Project

### Method 1: Using Visual Studio 2022

1. Open `foodmap.sln` in Visual Studio 2022
2. Right-click on the `FoodMap` project in Solution Explorer
3. Select "Build" or press `Ctrl+Shift+B`
4. The executable will be created in `FoodMap\bin\Debug\net6.0-windows\` or `FoodMap\bin\Release\net6.0-windows\`

### Method 2: Using Command Line

1. Open Command Prompt or PowerShell
2. Navigate to the project directory
3. Run the build script:
   ```
   build.bat
   ```

### Method 3: Using dotnet CLI

1. Open Command Prompt or PowerShell
2. Navigate to the project directory
3. Run:
   ```
   dotnet build FoodMap.sln --configuration Release
   ```

## Running the Application

After building, you can run the application by:

1. Double-clicking `FoodMap.exe` in the output directory
2. Or running from Visual Studio by pressing `F5` (Debug) or `Ctrl+F5` (Release)

## Project Structure

```
foodmap/
├── FoodMap/                 # Main application project
│   ├── Form1.cs            # Main form with map functionality
│   ├── Form1.Designer.cs   # Designer-generated code
│   ├── Program.cs          # Application entry point
│   ├── FoodMap.csproj      # Project file
│   └── app.manifest        # Application manifest
├── FoodMapWeb/             # Web version (separate project)
├── foodmap.sln             # Solution file
├── build.bat               # Build script
└── README.md               # This file
```

## Troubleshooting

### Common Build Issues

1. **Missing .NET 6.0 SDK**
   - Download and install .NET 6.0 SDK from Microsoft's website
   - Ensure Visual Studio 2022 has .NET 6.0 workload installed

2. **NuGet Package Issues**
   - Right-click on solution → "Restore NuGet Packages"
   - Or run: `dotnet restore FoodMap.sln`

3. **GMap.NET Issues**
   - Ensure you have internet connection for map tiles
   - Check if firewall is blocking the application

4. **Chinese Font Issues**
   - Ensure "Microsoft JhengHei UI" font is installed
   - The application will fall back to system default fonts if needed

### Performance Tips

- The application uses caching for map tiles to improve performance
- For better performance on slower devices, reduce the map zoom levels
- Close other applications to free up memory if experiencing slowdowns

## Mobile Features

The application automatically detects touch devices and provides:

- Fullscreen mode for mobile devices
- Touch-friendly interface with larger buttons and text
- Optimized tooltips for touch interaction
- Custom mobile dialogs for location details
- Touch gesture support for map navigation

## License

This project is for educational and demonstration purposes.

## Support

If you encounter any issues:

1. Check the troubleshooting section above
2. Ensure all requirements are met
3. Try cleaning and rebuilding the solution
4. Check Windows Event Viewer for any system errors 