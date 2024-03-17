# BestVim Installation Instructions

Changes from the main config:
* Some extras enabled by default. Check lazyvim.json to see which.
* Background is now transparrent so you can see the background of your terminal instead.
* Completions are now on tab so that you can safely hit enter to make a newline and ignore any completions you might have. (use arrow keys to switch between completions)

## Linux/MacOS

1. **Backup Neovim Files**:
   ```bash
   sudo mv ~/.config/nvim{,.bak}
   sudo mv ~/.local/share/nvim{,.bak} # Optional
   sudo mv ~/.local/state/nvim{,.bak} # Optional
   sudo mv ~/.cache/nvim{,.bak} # Optional
   ```

2. **Clone BestVim**:
   ```bash
   git clone https://github.com/DeeKahy/BestVim.git ~/.config/nvim
   ```

3. **Start Neovim**:
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
