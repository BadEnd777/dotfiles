## Manual Installation

This guide will walk you through the manual installation process for the Windows Terminal theme.

### 1. Find your PowerShell profile

Locate your PowerShell profile file, and create one if it doesn't exist:

```powershell
Test-Path $PROFILE
```

Create a new profile:

```powershell
New-Item -Path $PROFILE -ItemType File -Force
```

### 2. Install PowerShell Modules

Install required PowerShell modules:

```powershell
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
Install-Module -Name Z -Force
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
```

### 3. Set Up Nerd Font

Download and install your chosen [Nerd Fonts](https://www.nerdfonts.com/font-downloads) font.

### 4. Install Oh-My-Posh

Install Oh-My-Posh:

```powershell
winget install JanDeDobbeleer.OhMyPosh -s winget
```

### 5. Configure PowerShell Profile

Install the [Microsoft.PowerShell_profile.ps1](https://github.com/BadEnd777/dotfiles/blob/main/windows/Powershell/Microsoft.PowerShell_profile.ps1) file:

```powershell
curl -o $PROFILE -s https://raw.githubusercontent.com/BadEnd777/dotfiles/main/windows/Powershell/Microsoft.PowerShell_profile.ps1
```

Install the [1ms.omp.json](https://github.com/BadEnd777/dotfiles/blob/main/windows/Oh-My-Posh/1ms.omp.json) file:

```powershell
curl -o $env:POSH_THEMES_PATH\1ms.omp.json -s https://raw.githubusercontent.com/BadEnd777/dotfiles/main/windows/Oh-My-Posh/1ms.omp.json
```

### 6. Additional Configuration (Optional)

- Customize the `Search` function in your PowerShell profile for your preferred search engine.
- Customize the `Work` function in your PowerShell profile to open your preferred directory.

### 7. Restart PowerShell

Restart PowerShell to apply the changes and enjoy your enhanced terminal experience.
