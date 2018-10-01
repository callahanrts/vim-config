
<img src="https://raw.githubusercontent.com/callahanrts/vim-config/master/images/ss2.png" width="100%"/>

# Getting Started
```
# Clone this repository into `~/.config/nvim`
git clone https://github.com/callahanrts/vim-config ~/.config/nvim

# Create `init.vim`
cp init.sample.vim

# Start neovim
nvim

# Ignore any errors and install packages
:PlugInstall
```

# Configuration

Add whatever files you want to the user folder. Include these files from
within `init.vim`

# Gitgutter glyphs
configs/plugins/gitgutter.vim

# Keybindings

|Key         |Action                         |
|------------|----------------------------   |
|<Leader>op  |Open Project (NERDTree)        |
|<Leader>ot  |Open Terminal                  |
|<c-o>       |Close Terminal                 |
|<Leader>og  |Open file in Github            |
|<Leader>tt  |Toggle theme (Dark/Light)      |
|<Leader>ts  |Toggle ALE (Linting)           |
|<Leader>/   |Clear previous search          |
|<Leader>a   |Trigger Tabularize (formatting)|
|<c-t>n      |Create new tab                 |
|<c-t>x      |Delete a tab                   |
|Backspace   |Switch to last opened buffer   |
