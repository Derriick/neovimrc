# Neovim configuration

## Installation

### Archlinux

```sh
pacman -S ripgrep

# Markdown preview support
pacman -S npm
cd ~/.local/share/nvim/lazy/markdown-preview.nvim/
nmp install  # or `yarn install`
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

# Markdown preview support
winget install OpenJS.NodeJS
cd ~/AppData/Local/nvim-data/lazy/markdown-preview.nvim/
npm install
```
