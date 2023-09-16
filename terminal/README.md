# Dotfiles - PowerShell Terminal Configuration

This repository contains a configuration setup for enhancing your PowerShell terminal experience. It includes custom aliases, a customized prompt using Oh-My-Posh, and various modules to improve your productivity.

## Prerequisites

Before you get started, make sure you have the following prerequisites installed on your system:

- [PowerShell](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell)
- [Windows Package Manager (winget)](https://learn.microsoft.com/en-us/windows/package-manager/winget/)
- [Windows Terminal](https://www.microsoft.com/en-us/p/windows-terminal/9n0dx20hk701)
- [Nerd Fonts](https://www.nerdfonts.com/font-downloads) (Choose the font you want and install it)

## Installation Steps

### 1. Find your PowerShell profile file

The first step is to find your PowerShell profile file. This file is used to customize your PowerShell experience. It is a script that runs every time you open a PowerShell terminal. You can use it to customize your prompt, add aliases, and more.

1. Open your PowerShell terminal.
2. Run the following command to check if you have a profile file already:

```powershell
Test-Path $PROFILE
```

This command will return True if a profile file exists or False if it doesn't.

3. If you don't have a profile file, You can then create a new profile file by running:

```powershell
New-Item -Path $PROFILE -ItemType File -Force
```

This command will create a new profile file if it doesn't already exist.

### 2. Install PowerShell Modules

To set up the necessary PowerShell modules, open your PowerShell terminal navigate to your PowerShell profile file and run the following command:

```powershell
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
Install-Module -Name Z -Force
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
```

### 3. Set Up the Nerdfont

Download and install the [Nerd Fonts](https://www.nerdfonts.com/font-downloads) font of your choice on your system. This font is essential for displaying custom icons and improving code readability in your terminal. [How to install a font on Windows](https://support.microsoft.com/en-us/office/add-a-font-b7c5f17c-4426-4b53-967f-455339c564c1)

### 4. Clone the Dotfiles Repository

Clone this Dotfiles repository to your preferred location on your computer. You can use the `git clone`  command to clone the repository:
    
```powershell
git clone https://github.com/BadEnd777/dotfiles.git
```

### 5. Configure PowerShell Profile

Edit your PowerShell profile by opening the `Microsoft.PowerShell_profile.ps1` file located in the `dotfiles/terminal` directory. Customize it according to your preferences, such as adding or modifying aliases, functions, and other settings.

### 6. Install Oh-My-Posh Style

Run the following command to initialize and apply the Oh-My-Posh style:

```powershell
oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/BadEnd777/dotfiles/main/powershell/style.omp.json' | Invoke-Expression
```

This command will set up a custom prompt for your PowerShell terminal.

### 7. Additional Configuration (Optional)

- You can customize the `Work` function in the `Microsoft.PowerShell_profile.ps1` file to open your preferred workspace directory.
- You can use the `Update-Posh` function to keep Oh-My-Posh up to date by running `Update-Posh` in your PowerShell terminal.

## Changing the PowerShell Terminal Theme

1. Open your PowerShell terminal.
2. Go to settings by pressing `Ctrl + ,` or by clicking on the down arrow in the title bar and selecting `Settings`.
3. Click on `Open JSON file` to open the `settings.json` file.
6. Go to the `schemes` section and paste the contents of the `terminal\powershell\theme.json` file.
7. Save the `settings.json` file.
8. Restart your PowerShell terminal.
10. Open the settings again and go to the `Default` section in the `profiles` section.
11. Set the `Color Scheme` to `Catppuccin Mocha`.
12. Set the `Font Face` to the Nerd Font you installed.
13. Optional: You can also enable the acrylic effect for your PowerShell terminal by following these steps:
    - Scroll down to the `Transparency` section.
    - Enable `Acrylic` and set the `Background opacity` to `20%` or your preferred opacity

## Usage

Once you have completed the installation steps, you can start using your enhanced PowerShell terminal. The custom aliases, functions, and prompt provided in this configuration will help streamline your workflow.

Enjoy your improved PowerShell experience!

<hr>