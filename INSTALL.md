# Installation Guide for Ubuntu Linux 22.04

## Prerequisites

### Install .NET 8 SDK

1. Add Microsoft package repository:
```bash
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
```

2. Install .NET 8 SDK:
```bash
sudo apt-get update
sudo apt-get install -y dotnet-sdk-8.0
```

3. Verify installation:
```bash
dotnet --version
```

### Install Required System Dependencies

```bash
sudo apt-get update
sudo apt-get install -y libgdiplus libc6-dev
```

## Building Anaximander2

1. Clone the repository:
```bash
git clone https://github.com/kf6kjg/Anaximander2.git
cd Anaximander2
```

2. Make the build script executable:
```bash
chmod +x build.sh
```

3. Run the build script:
```bash
./build.sh
```

## Running Anaximander2

After successful build, the executable will be located in the `bin/` directory:

```bash
cd bin
dotnet Anaximander.dll
```

## Configuration

Copy and modify the sample configuration file:
```bash
cp Anaximander.sample.ini Anaximander.ini
# Edit Anaximander.ini with your settings
```

## Troubleshooting

### Common Issues

1. **Missing libgdiplus**: Install with `sudo apt-get install libgdiplus`
2. **Permission errors**: Ensure the user has write permissions to the output directory
3. **Database connection issues**: Verify MySQL/database connection settings in the configuration file

### System Requirements

- Ubuntu 22.04 LTS or newer
- .NET 8.0 Runtime
- MySQL or compatible database server
- Sufficient disk space for tile generation