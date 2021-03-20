-- vim.comd("let g:NERDTreeIgnore = ['\.pyc$', '\.rbc$', '\~$']")
vim.g.NERDTreeChDirMode = 2

-- Start with bookmarks displayed
vim.g.NERDTreeShowBookmarks = 0

-- Disable display of '?' text and 'Bookmarks' label.
vim.g.NERDTreeMinimalUI=1

-- Increase the size of nerdtree a bit
vim.g.NERDTreeWinSize=36

-- Use some nicer looking arrows
vim.g.NERDTreeDirArrowExpandable = ''
vim.g.NERDTreeDirArrowCollapsible = ''

-- Let <Leader><Leader> (^#) return from NERDTree window.
vim.g.NERDTreeCreatePrefix='silent keepalt keepjumps'

-- Maybe this can help with devicons performance issue?
vim.NERDTreeHighlightCursorline = 0
