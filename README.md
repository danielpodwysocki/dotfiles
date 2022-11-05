# dotfiles

This repository contains my dotfiles, setting up my development environment. Managed by `GNU stow`.

To bootstrap them in the home folder:

```
make home
```

macOS dependencies:
```
brew install stow
```

Rocky9 dependencies:

```
sudo dnf install epel-release
sudo dnf install stow
```


## neovim plugins
To not keep those in source control, I use `packer.nvim`.
(https://github.com/wbthomason/packer.nvim#quickstart)

Common packer commands:
```
-- You must run this or `PackerSync` whenever you make changes to your plugin configuration
-- Regenerate compiled loader file
:PackerCompile

-- Remove any disabled or unused plugins
:PackerClean

-- Clean, then install missing plugins
:PackerInstall

```

### per-plugin setup instructions:

GitHub Copilot:
```
:Copilot setup
:Copilot help
```


