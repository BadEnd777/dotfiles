# Aliases
Set-Alias lt tree # list all files in tree
Set-Alias ll ls # list all files
Set-Alias l ls # list all files
Set-Alias nf New-Item -Force # create new file
Set-Alias nd mkdir # create new directory
Set-Alias rm del # remove file
Set-Alias rd rmdir # remove directory
Set-Alias vim nvim # vim
Set-Alias c clear # clear screen
Set-Alias g git # git

# Prompt (Local)
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\1ms.omp.json" | Invoke-Expression

# Import-Module
Import-Module Terminal-Icons

Import-Module PSReadLine
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineOption -PredictionViewStyle ListView

# Functions
function Search { # Search in browser: Search BadEnd777
    param(
        [Parameter(Mandatory=$true)]
        [string]$query
    )
    Start-Process "https://www.startpage.com/do/search?q=$query&segment=startpage.brave"
}

function Work { # Open work directory: Work
    Set-Location "D:\Workspace" # <--- Your can change this path to your work directory
    Write-Host "Work directory opened" -ForegroundColor Green
}

function Update-Posh { # Update OhMyPosh: Update-Posh
    winget upgrade JanDeDobbeleer.OhMyPosh -s winget
}

# Functions for Git commands
function gs { git status }
function ga { git add $args }
function gc { git commit -m $args }
function gp { git push $args }