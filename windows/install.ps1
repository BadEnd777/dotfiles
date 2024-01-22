# Step 1: Find or create PowerShell profile
$profilePath = $PROFILE
if (-not (Test-Path $profilePath)) {
    New-Item -Path $profilePath -ItemType File -Force
}

# Step 2: Install PowerShell Modules
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
Install-Module -Name Z -Force
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck

# Step 3: Set Up Nerd Font
# Download and install your chosen Nerd Fonts manually.

# Step 4: Install Oh-My-Posh
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))

# Step 5: Configure PowerShell Profile
# Download and install Microsoft.PowerShell_profile.ps1
$profileContent = Invoke-RestMethod -Uri 'https://raw.githubusercontent.com/BadEnd777/dotfiles/main/windows/PowerShell/Microsoft.PowerShell_profile.ps1'
Set-Content -Path $profilePath -Value $profileContent -Force

# Download and install 1ms.omp.json
if (-not (Test-Path $env:POSH_THEMES_PATH)) {
    New-Item -Path $env:POSH_THEMES_PATH -ItemType Directory -Force
}

$ompContent = Invoke-RestMethod -Uri 'https://raw.githubusercontent.com/BadEnd777/dotfiles/main/windows/Oh-My-Posh/1ms.omp.json'
Set-Content -Path "$env:POSH_THEMES_PATH\1ms.omp.json" -Value $ompContent -Force

# Step 6: Additional Configuration (Optional)
# Add your customization for the `Search` and `Work` functions in your PowerShell profile.

# Step 7: Restart PowerShell
Write-Host "Restart PowerShell to apply the changes and enjoy your enhanced terminal experience."
