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
winget install JanDeDobbeleer.OhMyPosh -s winget

# Step 5: Configure PowerShell Profile
# Download and install Microsoft.PowerShell_profile.ps1
$profileContent = Invoke-RestMethod -Uri 'https://raw.githubusercontent.com/BadEnd777/dotfiles/main/windows/PowerShell/Microsoft.PowerShell_profile.ps1'
Set-Content -Path $profilePath -Value $profileContent -Force

# Download and install 1ms.omp.json
$ompJsonContent = Invoke-RestMethod -Uri 'https://raw.githubusercontent.com/BadEnd777/dotfiles/main/windows/Oh-My-Posh/1ms.omp.json'
$ompJsonPath = Join-Path $env:POSH_THEMES_PATH '1ms.omp.json'

# Check if $env:POSH_THEMES_PATH is defined and not null
if ($env:POSH_THEMES_PATH -and $ompJsonPath) {
    Set-Content -Path $ompJsonPath -Value $ompJsonContent -Force
} else {
    Write-Host "Error: Unable to determine the theme path. Please check your configuration."
}

# Step 6: Additional Configuration (Optional)
# Add your customization for the `Search` and `Work` functions in your PowerShell profile.

# Step 7: Restart PowerShell
Write-Host "Restart PowerShell to apply the changes and enjoy your enhanced terminal experience."
