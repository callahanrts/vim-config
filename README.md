
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

|Key          |Action                         |
|-------------|----------------------------   |
|`<Leader>op` |Open Project (NERDTree)        |
|`<Leader>ot` |Open Terminal                  |
|`<c-o>`      |Close Terminal                 |
|`<Leader>og` |Open file in Github            |
|`<Leader>tt` |Toggle theme (Dark/Light)      |
|`<Leader>ts` |Toggle ALE (Linting)           |
|`<Leader>/`  |Clear previous search          |
|`<Leader>a`  |Trigger Tabularize (formatting)|
|`<c-t>n`     |Create new tab                 |
|`<c-t>x`     |Delete a tab                   |
|`Backspace`  |Switch to last opened buffer   |


## Completion

| Key          | Action                |
|--------------|-----------------------|
| `gd`         | Go to definition      |
|--------------|-----------------------|
| `gr`         | References            |
|--------------|-----------------------|
| `K`          | Hover docs            |
|--------------|-----------------------|
| `<Leader>ca` | Code action           |
|--------------|-----------------------|
| `<Leader>rn` | Rename symbol         |
|--------------|-----------------------|
| `[d / ]d`    | Prev/next diagnostic  |
|--------------|-----------------------|
| `<C-i>`      | Show diagnostic float |
|--------------|-----------------------|
| `<Leader>cd` | Go to documentation   |
|--------------|-----------------------|

## GitHub (Octo)

Octo opens GitHub PRs and issues as real editable buffers. Requires `gh` CLI authenticated via `gh auth login`.

### Keybindings

| Key | Action |
|-----|--------|
| `<Leader>gpl` | List PRs |
| `<Leader>gpi` | Search PRs |
| `<Leader>gpc` | Checkout PR branch |
| `<Leader>grs` | Start review |
| `<Leader>grr` | Resume review |
| `<Leader>grc` | Submit review |
| `<Leader>gil` | List issues |
| `<Leader>gic` | Create issue |

### Inside a PR/issue buffer

| Key | Action |
|-----|--------|
| `<Leader>ca` | Add comment |
| `<Leader>cd` | Delete comment |
| `<Leader>ic` | Close issue/PR |
| `<Leader>ir` | Reopen issue/PR |
| `<Leader>la` | Add label |
| `<Leader>aa` | Add assignee |
| `<Leader>ra` | Add reviewer |
| `gf` | Go to file in PR diff |
| `]q` / `[q` | Next/prev comment thread |
| `<Leader>sa` | Add review suggestion |

### Common commands

```
:Octo pr list                  " all open PRs
:Octo pr checkout              " checkout PR by number
:Octo pr merge                 " merge current PR
:Octo review start             " begin a review on current PR
:Octo review comments          " show pending review comments
:Octo issue list assignee=@me  " filter issues assigned to you
:Octo search is:pr is:open     " GitHub search syntax works
```

Comments are edited inline in the buffer and submitted with `:w`.


```
  The full workflow would be:

  1. <Leader>gpl — pick a PR from the list
  2. <Leader>gpc — check out the branch (now you can run the code)
  3. :DiffviewOpen origin/main...HEAD — opens the file tree + diffs for the PR
  4. Review files, mark viewed, add Octo comments inline
  5. <Leader>grc — submit review
```
