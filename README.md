# BestVim Installation Instructions

## Linux/MacOS

1. **Backup Neovim Files**:
   ```bash
   mv ~/.config/nvim{,.bak}
   mv ~/.local/share/nvim{,.bak} # Optional
   mv ~/.local/state/nvim{,.bak} # Optional
   mv ~/.cache/nvim{,.bak} # Optional
   ```

2. **Clone BestVim**:
   ```bash
   git clone https://github.com/DeeKahy/BestVim.git ~/.config/nvim
   ```

3. **Remove Git Folder**:
   ```bash
   rm -rf ~/.config/nvim/.git
   ```

4. **Start Neovim**:
   ```bash
   nvim
   ```

## Windows

1. **Backup Neovim Files**:
   ```powershell
   Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
   Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak # Optional
   ```

2. **Clone BestVim**:
   ```powershell
   git clone https://github.com/DeeKahy/BestVim.git $env:LOCALAPPDATA\nvim
   ```

3. **Remove Git Folder**:
   ```powershell
   Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
   ```

4. **Start Neovim**:
   ```powershell
   nvim
   ```

*Customize your BestVim setup by editing the configuration files as needed.*
