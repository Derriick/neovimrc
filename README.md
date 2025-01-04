# Neovim configuration

## Installation

### Archlinux

```sh
pacman -S ripgrep

# Markdown support
pacman -S npm
```

### Windows

```sh
# Base
winget install Git.Git
winget install --id Git.Git -e --source winget
winget install Neovim.Neovim
winget install BurntSushi.ripgrep.MSVC
winget install sharkdp.fd
winget install --accept-source-agreements chocolatey.chocolatey
choco install -y wget unzip gzip mingw make

# Markdown
winget install OpenJS.NodeJS
```
