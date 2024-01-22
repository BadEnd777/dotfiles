# Step 1: Find or create PowerShell profile
if (-not (Test-Path $PROFILE)) {
    New-Item -Path $PROFILE -ItemType File -Force
}

# Step 2: Install PowerShell Modules
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
Install-Module -Name Z -Force
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck

# Step 3: Set Up Nerd Font
# Download and install your chosen Nerd Fonts manually.

# Step 4: Install Oh-My-Posh
winget install JanDeDobbeleer.OhMyPosh -s winget

# Step 5: Configure PowerShell Profile
# Download and install Microsoft.PowerShell_profile.ps1
$profileContent = Invoke-RestMethod -Uri 'https://raw.githubusercontent.com/BadEnd777/dotfiles/main/windows/Powershell/Microsoft.PowerShell_profile.ps1'
Set-Content -Path $PROFILE -Value $profileContent -Force

# Download and install 1ms.omp.json
$ompJsonContent = Invoke-RestMethod -Uri 'https://raw.githubusercontent.com/BadEnd777/dotfiles/main/windows/Oh-My-Posh/1ms.omp.json'
$ompJsonPath = Join-Path $env:POSH_THEMES_PATH '1ms.omp.json'
Set-Content -Path $ompJsonPath -Value $ompJsonContent -Force

# Step 6: Additional Configuration (Optional)
# Add your customization for the `Search` and `Work` functions in your PowerShell profile.

# Step 7: Restart PowerShell
Write-Host "Restart PowerShell to apply the changes and enjoy your enhanced terminal experience."
