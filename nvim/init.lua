require("config")
vim.cmd[[colorscheme nightfly]]

-- === BASIC OPTIONS ===
vim.opt.number = true
vim.cmd("syntax on")
vim.opt.tabstop = 4         
vim.opt.shiftwidth = 4         
vim.opt.autoindent = true  
vim.wo.relativenumber = true

-- === ARROWS ARE DEPRECATED ===
local noremap = { noremap = true }

vim.api.nvim_set_keymap("", "<Up>", "<Nop>", noremap)
vim.api.nvim_set_keymap("", "<Down>", "<Nop>", noremap)
vim.api.nvim_set_keymap("", "<Left>", "<Nop>", noremap)
vim.api.nvim_set_keymap("", "<Right>", "<Nop>", noremap)

-- === BASIC REMAPS ===
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- === THEME ===
-- Lua equivalent of your Vimscript ModeName() function
local function ModeName()
    local m = vim.fn.mode()

    return m == "n" and "NORMAL"
        or m == "i" and "INSERT"
        or m == "v" and "VISUAL"
        or m == "V" and "V-LINE"
        or m == "\022" and "V-BLOCK"  -- <C-v> is ^V, ASCII 22
        or m == "R" and "REPLACE"
        or m == "c" and "COMMAND"
        or m == "t" and "TERMINAL"
        or "OTHER"
end


-- make all main UI groups transparent
vim.api.nvim_set_hl(0, "Normal",         { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalNC",       { bg = "NONE" })
vim.api.nvim_set_hl(0, "SignColumn",     { bg = "NONE" })
vim.api.nvim_set_hl(0, "MsgArea",        { bg = "NONE" })
vim.api.nvim_set_hl(0, "TelescopeBorder",{ bg = "NONE" })
vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "EndOfBuffer",    { bg = "NONE" })
vim.api.nvim_set_hl(0, "LineNr",         { bg = "NONE" })
vim.api.nvim_set_hl(0, "CursorLineNr",   { bg = "NONE" })
vim.api.nvim_set_hl(0, "FoldColumn",     { bg = "NONE" })
vim.api.nvim_set_hl(0, "VertSplit",      { bg = "NONE" })
vim.api.nvim_set_hl(0, "StatusLine",   { bg = "NONE", fg = "NONE" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "NONE", fg = "NONE" })

-- expose ModeName() to Vimscript expressions inside statusline
_G.ModeName = ModeName


-- === STATUSLINE ===

vim.opt.laststatus = 2

-- reset statusline
vim.o.statusline = ""

-- build it piece by piece
vim.o.statusline = vim.o.statusline .. "%#zone_mode# "
vim.o.statusline = vim.o.statusline .. "%{v:lua.ModeName()} "
vim.o.statusline = vim.o.statusline .. "%#zone_arrow_mod# "
vim.o.statusline = vim.o.statusline .. "%#zone_file#%f"

-- === HIGHLIGHTS ===
vim.api.nvim_set_hl(0, "zone_mode", {
    bg = "#00ffff",   -- cyan
    fg = "#000000",   -- black
    bold = true,
})

vim.api.nvim_set_hl(0, "zone_arrow_mod", {
    fg = "#00ffff",   -- cyan
    bg = "NONE",
})

vim.api.nvim_set_hl(0, "zone_file", {
    fg = "#ffffff", 
    bg = "NONE",
})
