# Windows Configuration Setup

This repository contains a configuration setup to enhance your PowerShell terminal experience on Windows. It includes custom aliases, a personalized prompt using Oh-My-Posh, and various modules to boost productivity.

## Prerequisites

Before you begin, make sure you have the following installed on your system:

- Windows Package Manager (winget)
- [Windows Terminal](https://aka.ms/terminal)
- [Nerd Fonts](https://www.nerdfonts.com/font-downloads) (Install your preferred font)
- [PowerShell](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell?view=powershell-7.1)

## Installation

### 1. Clone the repository

```powershell
git clone https://github.com/BadEnd777/dotfiles.git
```

### 2. Open the `windows` directory

```powershell
cd dotfiles\windows
```

### 3. Run the `install.ps1` script

```powershell
.\install.ps1
```

Currently, the script will only install the PowerShell profile and Oh-My-Posh theme. I plan to add more features in the future.

> [!NOTE]
> Manually install read the [manual installation](./MANUAL_INSTALLATION.md) guide.

## Changing Windows Terminal Theme (Optional)

Edit the `settings.json` file to change the Windows Terminal theme.

```powershell
code $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
```

Add the following code to the `schemes` section:

```json
{
    "background": "#1E1E2E",
    "black": "#45475A",
    "blue": "#89B4FA",
    "brightBlack": "#585B70",
    "brightBlue": "#89B4FA",
    "brightCyan": "#94E2D5",
    "brightGreen": "#A6E3A1",
    "brightPurple": "#F5C2E7",
    "brightRed": "#F38BA8",
    "brightWhite": "#A6ADC8",
    "brightYellow": "#F9E2AF",
    "cursorColor": "#F5E0DC",
    "cyan": "#94E2D5",
    "foreground": "#CDD6F4",
    "green": "#A6E3A1",
    "name": "Catppuccin Mocha",
    "purple": "#F5C2E7",
    "red": "#F38BA8",
    "selectionBackground": "#585B70",
    "white": "#BAC2DE",
    "yellow": "#F9E2AF"
}
```

> [!NOTE]
> Credit to [Catppuccino](https://github.com/catppuccin) for the color palette, I love it!

Add the following code to the `profiles` section:

```json
{
    "defaults": 
    {
        "colorScheme": "Catppuccin Mocha",
        "opacity": 70,
        "useAcrylic": true,
        "startingDirectory": "%USERPROFILE%"
    },
}
```

## Usage

### Aliases

| Alias | Command               | Description            |
| ----- | --------------------- | ---------------------- |
| `lt`  | `tree`                | List all files in tree |
| `ll`  | `ls`                  | List all files         |
| `l`   | `ls`                  | List all files         |
| `nf`  | `New-Item -Force`     | Create new file        |
| `nd`  | `mkdir`               | Create new directory   |
| `rm`  | `del`                 | Remove file            |
| `rd`  | `rmdir`               | Remove directory       |
| `vim` | `nvim`                | Vim                    |
| `c`   | `clear`               | Clear screen           |
| `g`   | `git`                 | Git                    |
| `gs`  | `git status`          | Git status             |
| `ga`  | `git add $args`       | Git add                |
| `gc`  | `git commit -m $args` | Git commit             |
| `gp`  | `git push $args`      | Git push               |

### Functions

| Function      | Description         |
| ------------- | ------------------- |
| `Search`      | Search the web      |
| `Work`        | Open work directory |
| `Update-Posh` | Update Oh-My-Posh   |

---