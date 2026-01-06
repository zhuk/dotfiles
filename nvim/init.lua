-- ================================================================================================
-- options
-- ================================================================================================

-- theme & transparency
vim.cmd.colorscheme("unokai")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })

-- Basic settings
vim.opt.number = true -- Line numbers
-- vim.opt.relativenumber = true                      -- Relative line numbers
-- vim.opt.cursorline = true                          -- Highlight current line
vim.opt.wrap = false      -- Don't wrap lines
vim.opt.scrolloff = 10    -- Keep 10 lines above/below cursor
vim.opt.sidescrolloff = 8 -- Keep 8 columns left/right of cursor

vim.o.winborder = "rounded"

-- Indentation
vim.opt.tabstop = 2        -- Tab width
vim.opt.shiftwidth = 2     -- Indent width
vim.opt.softtabstop = 2    -- Soft tab stop
vim.opt.expandtab = true   -- Use spaces instead of tabs
vim.opt.smartindent = true -- Smart auto-indenting
vim.opt.autoindent = true  -- Copy indent from current line

-- Search settings
vim.opt.ignorecase = true -- Case insensitive search
vim.opt.smartcase = true  -- Case sensitive if uppercase in search
vim.opt.hlsearch = false  -- Don't highlight search results
vim.opt.incsearch = true  -- Show matches as you type

-- Visual settings
vim.opt.termguicolors = true                      -- Enable 24-bit colors
vim.opt.signcolumn = "yes"                        -- Always show sign column
vim.opt.colorcolumn = "100"                       -- Show column at 100 characters
vim.opt.showmatch = true                          -- Highlight matching brackets
vim.opt.matchtime = 2                             -- How long to show matching bracket
vim.opt.cmdheight = 1                             -- Command line height
vim.opt.completeopt = "menuone,noinsert,noselect" -- Completion options
vim.opt.showmode = false                          -- Don't show mode in command line
vim.opt.pumheight = 10                            -- Popup menu height
vim.opt.pumblend = 10                             -- Popup menu transparency
vim.opt.winblend = 0                              -- Floating window transparency
vim.opt.conceallevel = 0                          -- Don't hide markup
vim.opt.concealcursor = ""                        -- Don't hide cursor line markup
vim.opt.lazyredraw = true                         -- Don't redraw during macros
vim.opt.synmaxcol = 300                           -- Syntax highlighting limit

-- File handling
vim.opt.backup = false                            -- Don't create backup files
vim.opt.writebackup = false                       -- Don't create backup before writing
vim.opt.swapfile = false                          -- Don't create swap files
vim.opt.undofile = true                           -- Persistent undo
vim.opt.undodir = vim.fn.expand("~/.vim/undodir") -- Undo directory
vim.opt.updatetime = 300                          -- Faster completion
vim.opt.timeoutlen = 500                          -- Key timeout duration
vim.opt.ttimeoutlen = 0                           -- Key code timeout
vim.opt.autoread = true                           -- Auto reload files changed outside vim
vim.opt.autowrite = false                         -- Don't auto save

-- Behavior settings
vim.opt.hidden = true                   -- Allow hidden buffers
vim.opt.errorbells = false              -- No error bells
vim.opt.backspace = "indent,eol,start"  -- Better backspace behavior
vim.opt.autochdir = false               -- Don't auto change directory
vim.opt.iskeyword:append("-")           -- Treat dash as part of word
vim.opt.path:append("**")               -- include subdirectories in search
vim.opt.selection = "exclusive"         -- Selection behavior
vim.opt.mouse = "a"                     -- Enable mouse support
vim.opt.clipboard:append("unnamedplus") -- Use system clipboard
vim.opt.modifiable = true               -- Allow buffer modifications
vim.opt.encoding = "UTF-8"              -- Set encoding

vim.opt.exrc = true
vim.opt.list = true -- Show <tab> and trailing spaces

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s) See `:help 'confirm'`
vim.opt.confirm = true

-- Cursor settings
-- vim.opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- Folding settings
vim.opt.foldmethod = "expr"                     -- Use expression for folding
vim.opt.foldexpr = "nvim_treesitter#foldexpr()" -- Use treesitter for folding
vim.opt.foldlevel = 99                          -- Start with all folds open

-- Split behavior
vim.opt.splitbelow = true -- Horizontal splits go below
vim.opt.splitright = true -- Vertical splits go right

-- Key mappings
vim.g.mapleader = " "      -- Set leader key to space
vim.g.maplocalleader = " " -- Set local leader key (NEW)

-- virtual text
vim.diagnostic.config({ virtual_text = true })

-- Normal mode mappings
vim.keymap.set("n", "<leader>c", ":nohlsearch<CR>", { desc = "Clear search highlights" })

-- Y to EOL
vim.keymap.set("n", "Y", "y$", { desc = "Yank to end of line" })

-- Center screen when jumping
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })

-- Better paste behavior
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without yanking" })

-- Delete without yanking
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without yanking" })

-- Buffer navigation
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous buffer" })

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- navigate between windows in any modes
vim.keymap.set({ "t", "i" }, "<C-h>", "<C-\\><C-n><C-w>h")
vim.keymap.set({ "t", "i" }, "<C-j>", "<C-\\><C-n><C-w>j")
vim.keymap.set({ "t", "i" }, "<C-k>", "<C-\\><C-n><C-w>k")
vim.keymap.set({ "t", "i" }, "<C-l>", "<C-\\><C-n><C-w>l")

-- Splitting & Resizing
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase window width" })

-- Move lines up/down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Better indenting in visual mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })

-- Quick file navigation
-- vim.keymap.set("n", "<leader>e", ":Explore<CR>", { desc = "Open file explorer" })
-- vim.keymap.set("n", "<leader>ff", ":find ", { desc = "Find file" })

-- Better J behavior
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines and keep cursor position" })

-- Quick config editing
vim.keymap.set("n", "<leader>rc", ":e $MYVIMRC<CR>", { desc = "Edit config" })
vim.keymap.set("n", "<leader>rl", ":so $MYVIMRC<CR>", { desc = "Reload config" })


-- ============================================================================
-- USEFUL FUNCTIONS
-- ============================================================================

-- Copy Full File-Path
vim.keymap.set("n", "<leader>pa", function()
    local path = vim.fn.expand("%:p")
    vim.fn.setreg("+", path)
    print("file:", path)
end)

-- Basic autocommands
local augroup = vim.api.nvim_create_augroup("UserConfig", {})

-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
    group = augroup,
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Return to last edit position when opening files
vim.api.nvim_create_autocmd("BufReadPost", {
    group = augroup,
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')
        local lcount = vim.api.nvim_buf_line_count(0)
        local line = mark[1]
        local ft = vim.bo.filetype
        if line > 0 and line <= lcount
            and vim.fn.index({ "commit", "gitrebase", "xxd" }, ft) == -1
            and not vim.o.diff then
            pcall(vim.api.nvim_win_set_cursor, 0, mark)
        end
    end,
})

-- Set filetype-specific settings
vim.api.nvim_create_autocmd("FileType", {
    group = augroup,
    pattern = { "lua", "python" },
    callback = function()
        vim.opt_local.tabstop = 4
        vim.opt_local.shiftwidth = 4
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    group = augroup,
    pattern = { "javascript", "typescript", "json", "html", "css" },
    callback = function()
        vim.opt_local.tabstop = 2
        vim.opt_local.shiftwidth = 2
    end,
})

-- Auto-close terminal when process exits
vim.api.nvim_create_autocmd("TermClose", {
    group = augroup,
    callback = function()
        if vim.v.event.status == 0 then
            vim.api.nvim_buf_delete(0, {})
        end
    end,
})

-- Disable line numbers in terminal
vim.api.nvim_create_autocmd("TermOpen", {
    group = augroup,
    callback = function()
        vim.opt_local.number = false
        vim.opt_local.relativenumber = false
        vim.opt_local.signcolumn = "no"
    end,
})

-- Auto-resize splits when window is resized
vim.api.nvim_create_autocmd("VimResized", {
    group = augroup,
    callback = function()
        vim.cmd("tabdo wincmd =")
    end,
})

-- Create directories when saving files
vim.api.nvim_create_autocmd("BufWritePre", {
    group = augroup,
    callback = function()
        local dir = vim.fn.expand('<afile>:p:h')
        if vim.fn.isdirectory(dir) == 0 then
            vim.fn.mkdir(dir, 'p')
        end
    end,
})

-- Command-line completion
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
vim.opt.wildignore:append({ "*.o", "*.obj", "*.pyc", "*.class", "*.jar" })

-- Better diff options
vim.opt.diffopt:append("linematch:60")

-- Performance improvements
vim.opt.redrawtime = 10000
vim.opt.maxmempattern = 20000

-- Create undo directory if it doesn't exist
local undodir = vim.fn.expand("~/.vim/undodir")
if vim.fn.isdirectory(undodir) == 0 then
    vim.fn.mkdir(undodir, "p")
end

-- ============================================================================
-- FLOATING TERMINAL
-- ============================================================================

-- terminal
-- local terminal_state = {
--   buf = nil,
--   win = nil,
--   is_open = false
-- }
--
-- local function FloatingTerminal()
--   -- If terminal is already open, close it (toggle behavior)
--   if terminal_state.is_open and vim.api.nvim_win_is_valid(terminal_state.win) then
--     vim.api.nvim_win_close(terminal_state.win, false)
--     terminal_state.is_open = false
--     return
--   end
--
--   -- Create buffer if it doesn't exist or is invalid
--   if not terminal_state.buf or not vim.api.nvim_buf_is_valid(terminal_state.buf) then
--     terminal_state.buf = vim.api.nvim_create_buf(false, true)
--     -- Set buffer options for better terminal experience
--     vim.api.nvim_buf_set_option(terminal_state.buf, 'bufhidden', 'hide')
--   end
--
--   -- Calculate window dimensions
--   local width = math.floor(vim.o.columns * 0.8)
--   local height = math.floor(vim.o.lines * 0.8)
--   local row = math.floor((vim.o.lines - height) / 2)
--   local col = math.floor((vim.o.columns - width) / 2)
--
--   -- Create the floating window
--   terminal_state.win = vim.api.nvim_open_win(terminal_state.buf, true, {
--     relative = 'editor',
--     width = width,
--     height = height,
--     row = row,
--     col = col,
--     style = 'minimal',
--     border = 'rounded',
--   })
--
--   -- Set transparency for the floating window
--   vim.api.nvim_win_set_option(terminal_state.win, 'winblend', 0)
--
--   -- Set transparent background for the window
--   vim.api.nvim_win_set_option(terminal_state.win, 'winhighlight',
--     'Normal:FloatingTermNormal,FloatBorder:FloatingTermBorder')
--
--   -- Define highlight groups for transparency
--   vim.api.nvim_set_hl(0, "FloatingTermNormal", { bg = "none" })
--   vim.api.nvim_set_hl(0, "FloatingTermBorder", { bg = "none", })
--
--   -- Start terminal if not already running
--   local has_terminal = false
--   local lines = vim.api.nvim_buf_get_lines(terminal_state.buf, 0, -1, false)
--   for _, line in ipairs(lines) do
--     if line ~= "" then
--       has_terminal = true
--       break
--     end
--   end
--
--   if not has_terminal then
--     vim.fn.termopen(os.getenv("SHELL"))
--   end
--
--   terminal_state.is_open = true
--   vim.cmd("startinsert")
--
--   -- Set up auto-close on buffer leave
--   vim.api.nvim_create_autocmd("BufLeave", {
--     buffer = terminal_state.buf,
--     callback = function()
--       if terminal_state.is_open and vim.api.nvim_win_is_valid(terminal_state.win) then
--         vim.api.nvim_win_close(terminal_state.win, false)
--         terminal_state.is_open = false
--       end
--     end,
--     once = true
--   })
-- end
--
-- -- Function to explicitly close the terminal
-- local function CloseFloatingTerminal()
--   if terminal_state.is_open and vim.api.nvim_win_is_valid(terminal_state.win) then
--     vim.api.nvim_win_close(terminal_state.win, false)
--     terminal_state.is_open = false
--   end
-- end
--
-- -- Key mappings
-- vim.keymap.set("n", "<leader>t", FloatingTerminal, { noremap = true, silent = true, desc = "Toggle floating terminal" })
--
--
-- vim.keymap.set("t", "<Esc>", function()
--   if terminal_state.is_open then
--     vim.api.nvim_win_close(terminal_state.win, false)
--     terminal_state.is_open = false
--   end
-- end, { noremap = true, silent = true, desc = "Close floating terminal from terminal mode" })
--
-- Use <Esc> to exit terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")


-- -- ============================================================================
-- -- TABS
-- -- ============================================================================
--
-- -- Tab display settings
-- vim.opt.showtabline = 1  -- Always show tabline (0=never, 1=when multiple tabs, 2=always)
-- vim.opt.tabline = ''     -- Use default tabline (empty string uses built-in)
--
-- -- Transparent tabline appearance
-- vim.cmd([[
--   hi TabLineFill guibg=NONE ctermfg=242 ctermbg=NONE
-- ]])
--
-- -- Alternative navigation (more intuitive)
-- vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', { desc = 'New tab' })
-- vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', { desc = 'Close tab' })
--
-- -- Tab moving
-- vim.keymap.set('n', '<leader>tm', ':tabmove<CR>', { desc = 'Move tab' })
-- vim.keymap.set('n', '<leader>t>', ':tabmove +1<CR>', { desc = 'Move tab right' })
-- vim.keymap.set('n', '<leader>t<', ':tabmove -1<CR>', { desc = 'Move tab left' })
--
-- -- Function to open file in new tab
-- local function open_file_in_tab()
--   vim.ui.input({ prompt = 'File to open in new tab: ', completion = 'file' }, function(input)
--     if input and input ~= '' then
--       vim.cmd('tabnew ' .. input)
--     end
--   end)
-- end
--
-- -- Function to duplicate current tab
-- local function duplicate_tab()
--   local current_file = vim.fn.expand('%:p')
--   if current_file ~= '' then
--     vim.cmd('tabnew ' .. current_file)
--   else
--     vim.cmd('tabnew')
--   end
-- end
--
-- -- Function to close tabs to the right
-- local function close_tabs_right()
--   local current_tab = vim.fn.tabpagenr()
--   local last_tab = vim.fn.tabpagenr('$')
--
--   for i = last_tab, current_tab + 1, -1 do
--     vim.cmd(i .. 'tabclose')
--   end
-- end
--
-- -- Function to close tabs to the left
-- local function close_tabs_left()
--   local current_tab = vim.fn.tabpagenr()
--
--   for i = current_tab - 1, 1, -1 do
--     vim.cmd('1tabclose')
--   end
-- end
--
-- -- Enhanced keybindings
-- vim.keymap.set('n', '<leader>tO', open_file_in_tab, { desc = 'Open file in new tab' })
-- vim.keymap.set('n', '<leader>td', duplicate_tab, { desc = 'Duplicate current tab' })
-- vim.keymap.set('n', '<leader>tr', close_tabs_right, { desc = 'Close tabs to the right' })
-- vim.keymap.set('n', '<leader>tL', close_tabs_left, { desc = 'Close tabs to the left' })
--
-- -- Function to close buffer but keep tab if it's the only buffer in tab
-- local function smart_close_buffer()
--   local buffers_in_tab = #vim.fn.tabpagebuflist()
--   if buffers_in_tab > 1 then
--     vim.cmd('bdelete')
--   else
--     -- If it's the only buffer in tab, close the tab
--     vim.cmd('tabclose')
--   end
-- end
-- vim.keymap.set('n', '<leader>bd', smart_close_buffer, { desc = 'Smart close buffer/tab' })
--
-- ============================================================================
-- STATUSLINE
-- ============================================================================
--
-- -- Git branch function
-- local function git_branch()
--   local branch = vim.fn.system("git branch --show-current 2>/dev/null | tr -d '\n'")
--   if branch ~= "" then
--     return "  " .. branch .. " "
--   end
--   return ""
-- end
--
-- -- File type with icon
-- local function file_type()
--   local ft = vim.bo.filetype
--   local icons = {
--     lua = "[LUA]",
--     python = "[PY]",
--     javascript = "[JS]",
--     html = "[HTML]",
--     css = "[CSS]",
--     json = "[JSON]",
--     markdown = "[MD]",
--     vim = "[VIM]",
--     sh = "[SH]",
--   }
--
--   if ft == "" then
--     return "  "
--   end
--
--   return (icons[ft] or ft)
-- end
--
-- -- Word count for text files
-- local function word_count()
--   local ft = vim.bo.filetype
--   if ft == "markdown" or ft == "text" or ft == "tex" then
--     local words = vim.fn.wordcount().words
--     return "  " .. words .. " words "
--   end
--   return ""
-- end
--
-- -- File size
-- local function file_size()
--   local size = vim.fn.getfsize(vim.fn.expand('%'))
--   if size < 0 then return "" end
--   if size < 1024 then
--     return size .. "B "
--   elseif size < 1024 * 1024 then
--     return string.format("%.1fK", size / 1024)
--   else
--     return string.format("%.1fM", size / 1024 / 1024)
--   end
-- end
--
-- -- Mode indicators with icons
-- local function mode_icon()
--   local mode = vim.fn.mode()
--   local modes = {
--     n = "NORMAL",
--     i = "INSERT",
--     v = "VISUAL",
--     V = "V-LINE",
--     ["\22"] = "V-BLOCK",  -- Ctrl-V
--     c = "COMMAND",
--     s = "SELECT",
--     S = "S-LINE",
--     ["\19"] = "S-BLOCK",  -- Ctrl-S
--     R = "REPLACE",
--     r = "REPLACE",
--     ["!"] = "SHELL",
--     t = "TERMINAL"
--   }
--   return modes[mode] or "  " .. mode:upper()
-- end
--
-- _G.mode_icon = mode_icon
-- _G.git_branch = git_branch
-- _G.file_type = file_type
-- _G.file_size = file_size
--
-- vim.cmd([[
--   highlight StatusLineBold gui=bold cterm=bold
-- ]])
--
-- -- Function to change statusline based on window focus
-- local function setup_dynamic_statusline()
--   vim.api.nvim_create_autocmd({"WinEnter", "BufEnter"}, {
--     callback = function()
--     vim.opt_local.statusline = table.concat {
--       "  ",
--       "%#StatusLineBold#",
--       "%{v:lua.mode_icon()}",
--       "%#StatusLine#",
--       " │ %f %h%m%r",
--       "%{v:lua.git_branch()}",
--       " │ ",
--       "%{v:lua.file_type()}",
--       " | ",
--       "%{v:lua.file_size()}",
--       "%=",                     -- Right-align everything after this
--       "%l:%c  %P ",             -- Line:Column and Percentage
--     }
--     end
--   })
--   vim.api.nvim_set_hl(0, "StatusLineBold", { bold = true })
--
--   vim.api.nvim_create_autocmd({"WinLeave", "BufLeave"}, {
--     callback = function()
--       vim.opt_local.statusline = "  %f %h%m%r │ %{v:lua.file_type()} | %=  %l:%c   %P "
--     end
--   })
-- end
--
-- -- setup_dynamic_statusline()





vim.keymap.set("n", "<leader>lf", function()
    vim.lsp.buf.format({ async = true })
end, { desc = "Format buffer" })

-- vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })

-- vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>")
-- vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>")

-- vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { desc = "LSP: Rename symbol" })

-- vim.keymap.set("n", "<C-S-i>", function()
--     local buf = vim.api.nvim_get_current_buf()
--     local enabled = vim.lsp.inlay_hint.is_enabled({ bufnr = buf })
--     vim.lsp.inlay_hint.enable(not enabled, { bufnr = buf })
-- end, { desc = "Toggle LSP inlay hints" })

vim.keymap.set("n", "<leader>o", "<cmd>Oil<cr>", { desc = "Oil file explorer" })

vim.keymap.set("n", "<leader>f", ":Pick files<cr>", { desc = "pick files" })



-- [[ Create user commands ]]
-- See `:h nvim_create_user_command()` and `:h user-commands`

-- [[ Add optional packages ]]
-- Nvim comes bundled with a set of packages that are not enabled by
-- default. You can enable any of them by using the `:packadd` command.

-- For example, to add the "nohlsearch" package to automatically turn off search highlighting after
-- 'updatetime' and when going to insert mode
vim.cmd("packadd! nohlsearch")

-- [[ Install plugins ]]
-- Nvim functionality can be extended by installing external plugins.
-- One way to do it is with a built-in plugin manager. See `:h vim.pack`.
vim.pack.add({
    { src = "https://github.com/neovim/nvim-lspconfig" },
    -- { src = "https://github.com/olimorris/onedarkpro.nvim.git" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    { src = "https://github.com/navarasu/onedark.nvim.git" },
    { src = "https://github.com/folke/which-key.nvim.git" },
    -- { src = "https://github.com/kdheepak/lazygit.nvim.git" },
    -- { src = "https://github.com/lewis6991/gitsigns.nvim.git" },
    {
        src = "https://github.com/saghen/blink.cmp.git",
        version = "v1.8.0",
    },
    {
        src = "https://github.com/akinsho/bufferline.nvim.git",
        version = "v4.9.1",
    },
    { src = "https://github.com/Aietes/esp32.nvim.git" },
    { src = "https://github.com/folke/snacks.nvim.git" },
    { src = "https://github.com/nvim-mini/mini.nvim.git" },
    { src = "https://github.com/stevearc/oil.nvim.git" },

    { src = "https://github.com/vague2k/vague.nvim" },
    -- { src = "https://github.com/chentoast/marks.nvim" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter",        version = "main" },
    { src = "https://github.com/aznhe21/actions-preview.nvim" },
    { src = "https://github.com/nvim-telescope/telescope.nvim",          version = "0.1.8" },
    { src = "https://github.com/nvim-telescope/telescope-ui-select.nvim" },
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/chomosuke/typst-preview.nvim" },
    { src = "https://github.com/L3MON4D3/LuaSnip" },
    { src = "https://github.com/LinArcX/telescope-env.nvim" },
    -- { src = "https://github.com/mfussenegger/nvim-dap" },
    -- { src = "https://github.com/rcarriga/nvim-dap-ui" },
    -- { src = "https://github.com/theHamsta/nvim-dap-virtual-text" },
    -- { src = "https://github.com/julianolf/nvim-dap-lldb" }
})

-- require("onedark").setup({
--     style = "warmer",
-- })
-- require("onedark").load()

-- require("onedarkpro").setup()
-- vim.cmd("colorscheme onedark")

require("oil").setup({
    lsp_file_methods = {
        enabled = true,
        timeout_ms = 1000,
        autosave_changes = true,
    },
    columns = {
        "icon",
    },
    float = {
        max_width = 0.3,
        max_height = 0.6,
        border = "rounded",
    },
})

-- require("mini.bufremove").setup()

-- vim.keymap.set("n", "<leader>bd", MiniBufremove.delete, { desc = "My delete buffer" })
-- vim.keymap.set("n", "<leader>bw", MiniBufremove.wipeout, { desc = "My wipeout buffer" })
-- vim.api.nvim_create_autocmd("BufHidden", {
--     callback = function(ev)
--         local buf = ev.buf
--         if vim.bo[buf].buftype ~= "" then
--             return
--         end
--         if vim.api.nvim_buf_get_name(buf) ~= "" then
--             return
--         end
--         -- Don't delete if user typed something
--         if vim.bo[buf].modified then
--             return
--         end
--         vim.schedule(function()
--             if vim.api.nvim_buf_is_valid(buf) then
--                 MiniBufremove.delete(buf, true)
--             end
--         end)
--     end,
-- })


require('mini.statusline').setup()
require("mini.pick").setup()

-- require("gitsigns").setup()
--

local telescope = require("telescope")
local default_color = "vague"
telescope.setup({
    defaults = {
        preview = { treesitter = true },
        color_devicons = true,
        sorting_strategy = "ascending",
        borderchars = {
            "", -- top
            "", -- right
            "", -- bottom
            "", -- left
            "", -- top-left
            "", -- top-right
            "", -- bottom-right
            "", -- bottom-left
        },
        path_displays = { "smart" },
        layout_config = {
            height = 100,
            width = 400,
            prompt_position = "top",
            preview_cutoff = 40,
        }
    }
})
telescope.load_extension("ui-select")

require("actions-preview").setup {
    backend = { "telescope" },
    extensions = { "env" },
    telescope = vim.tbl_extend(
        "force",
        require("telescope.themes").get_dropdown(), {}
    )
}

require "vague".setup({ transparent = true })
require("luasnip").setup({ enable_autosnippets = true })
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets/" })


local function pack_clean()
    local active_plugins = {}
    local unused_plugins = {}

    for _, plugin in ipairs(vim.pack.get()) do
        active_plugins[plugin.spec.name] = plugin.active
    end

    for _, plugin in ipairs(vim.pack.get()) do
        if not active_plugins[plugin.spec.name] then
            table.insert(unused_plugins, plugin.spec.name)
        end
    end

    if #unused_plugins == 0 then
        print("No unused plugins.")
        return
    end

    local choice = vim.fn.confirm("Remove unused plugins?", "&Yes\n&No", 2)
    if choice == 1 then
        vim.pack.del(unused_plugins)
    end
end

vim.keymap.set("n", "<leader>pc", pack_clean)
local colors = {}
local ls = require("luasnip")
local builtin = require("telescope.builtin")
local map = vim.keymap.set
local current = 1

-- map({ "n", "v", "x" }, ";", ":", { desc = "Self explanatory" })
-- map({ "n", "v", "x" }, ":", ";", { desc = "Self explanatory" })
map({ "n", "v", "x" }, "<leader>v", "<Cmd>edit $MYVIMRC<CR>", { desc = "Edit " .. vim.fn.expand("$MYVIMRC") })
map({ "n", "v", "x" }, "<leader>z", "<Cmd>e ~/.config/zsh/.zshrc<CR>", { desc = "Edit .zshrc" })
map({ "n", "v", "x" }, "<leader>n", ":norm ", { desc = "ENTER NORM COMMAND." })
map({ "n", "v", "x" }, "<leader>o", "<Cmd>source %<CR>", { desc = "Source " .. vim.fn.expand("$MYVIMRC") })
map({ "n", "v", "x" }, "<leader>O", "<Cmd>restart<CR>", { desc = "Restart vim." })
map({ "n", "v", "x" }, "<C-s>", [[:s/\V]], { desc = "Enter substitue mode in selection" })
map({ "n", "v", "x" }, "<leader>lf", vim.lsp.buf.format, { desc = "Format current buffer" })
map({ "v", "x", "n" }, "<C-y>", '"+y', { desc = "System clipboard yank." })
map({ "n" }, "<leader>f", builtin.find_files, { desc = "Telescope live grep" })

function git_files()
    builtin.find_files({ no_ignore = true })
end

map({ "n" }, "<leader>g", builtin.live_grep)
map({ "n" }, "<leader>sg", git_files)
map({ "n" }, "<leader>sb", builtin.buffers)
map({ "n" }, "<leader>si", builtin.grep_string)
map({ "n" }, "<leader>so", builtin.oldfiles)
map({ "n" }, "<leader>sh", builtin.help_tags)
map({ "n" }, "<leader>sm", builtin.man_pages)
map({ "n" }, "<leader>sr", builtin.lsp_references)
map({ "n" }, "<leader>sd", builtin.diagnostics)
-- map({ "n" }, "<leader>si", builtin.lsp_implementations)
map({ "n" }, "<leader>sT", builtin.lsp_type_definitions)
map({ "n" }, "<leader>ss", builtin.current_buffer_fuzzy_find)
map({ "n" }, "<leader>st", builtin.builtin)
map({ "n" }, "<leader>sc", builtin.git_bcommits)
map({ "n" }, "<leader>sk", builtin.keymaps)
map({ "n" }, "<leader>se", "<cmd>Telescope env<cr>")
map({ "n" }, "<leader>sa", require("actions-preview").code_actions)
map({ "n" }, "<leader>e", "<cmd>Oil<CR>")
map({ "n" }, "<leader>c", "1z=")
map({ "n" }, "<C-q>", ":copen<CR>", { silent = true })
map({ "n" }, "<leader>w", "<Cmd>update<CR>", { desc = "Write the current buffer." })
map({ "n" }, "<leader>q", "<Cmd>:quit<CR>", { desc = "Quit the current buffer." })
map({ "n" }, "<leader>Q", "<Cmd>:wqa<CR>", { desc = "Quit all buffers and write." })
map({ "n" }, "<C-f>", "<Cmd>Open .<CR>", { desc = "Open current directory in Finder." })
map({ "n" }, "<leader>a", ":edit #<CR>", { desc = "Open current directory in Finder." })

require("blink.cmp").setup({
    fuzzy = {
        implementation = "prefer_rust",
    },
    keymap = {
        preset = "default",
        ["<CR>"] = { "accept", "fallback" },
    },
})

require("bufferline").setup({
    options = {
        always_show_bufferline = false,
        right_mouse_command = function(id)
            MiniBufremove.delete(id, true)
        end,
    },
})

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "rust_analyzer", "clangd" },
})

local get_clangd = function()
    local clangd = require("esp32").lsp_config()
    table.insert(clangd.cmd, "--header-insertion=never")
    return clangd
end

vim.lsp.config("clangd", get_clangd())


-- vim.api.nvim_create_autocmd('LspAttach', {
--     group = vim.api.nvim_create_augroup('my.lsp', {}),
--     callback = function(args)
--         local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
--         if client:supports_method('textDocument/completion') then
--             -- Optional: trigger autocompletion on EVERY keypress. May be slow!
--             local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
--             client.server_capabilities.completionProvider.triggerCharacters = chars
--             vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
--         end
--     end,
-- })

vim.lsp.enable({
    "lua_ls", "cssls", "svelte", "pyright",
    "rust_analyzer", "clangd", "glsl_analyzer", "tailwindcss", "ts_ls", "emmet_ls"
})



-- todo: disable treesitter for error.
-- vim.treesitter.highlighter.new = function() end
