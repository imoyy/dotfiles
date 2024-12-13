local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.opt.clipboard:append("unnamedplus")

-- remap leader key
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- yank to system clipboard
keymap({"n", "v"}, "<leader>y", '"+y', opts)

-- paste from system clipboard
keymap({"n", "v"}, "<leader>p", '"+p', opts)

-- better indent handling
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text up and down
keymap("v", "J", ":m .+1<CR>==", opts)
keymap("v", "K", ":m .-2<CR>==", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- paste preserves primal yanked piece
keymap("v", "p", '"_dP', opts)

-- removes highlighting after escaping vim search
keymap("n", "<Esc>", "<Esc>:noh<CR>", opts)

-- call vscode commands from neovim

-- general keymaps
keymap({"n", "v"}, "<leader>t", "<cmd>lua require('vscode').action('workbench.action.terminal.toggleTerminal')<CR>")
keymap({"n", "v"}, "<leader>b", "<cmd>lua require('vscode').action('editor.debug.action.toggleBreakpoint')<CR>")
keymap({"n", "v"}, "<leader>d", "<cmd>lua require('vscode').action('editor.action.showHover')<CR>")
keymap({"n", "v"}, "<leader>a", "<cmd>lua require('vscode').action('editor.action.quickFix')<CR>")
keymap({"n", "v"}, "<leader>xx", "<cmd>lua require('vscode').action('workbench.actions.view.problems')<CR>")
keymap({"n", "v"}, "<leader>cn", "<cmd>lua require('vscode').action('notifications.clearAll')<CR>")
keymap({"n", "v"}, "<leader>ff", "<cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>")
keymap({"n", "v"}, "<leader><leader>", "<cmd>lua require('vscode').action('workbench.action.showCommands')<CR>")
keymap({"n", "v"}, "<leader>pr", "<cmd>lua require('vscode').action('code-runner.run')<CR>")

-- editor keymaps
keymap({"n", "v"}, "zc", "<cmd>lua require('vscode').action('editor.fold')<CR>")
keymap({"n", "v"}, "zo", "<cmd>lua require('vscode').action('editor.unfold')<CR>")
keymap({"n", "v"}, "<leader>ss", "<cmd>lua require('vscode').action('workbench.action.gotoSymbol')<CR>")
keymap({"n", "v"}, "<leader>cr", "<cmd>lua require('vscode').action('editor.action.rename')<CR>")
keymap({"n", "v"}, "<leader>fx", "<cmd>lua require('vscode').action('workbench.action.closeActiveEditor')<CR>")
keymap({"n", "v"}, "<leader>fd", "<cmd>lua require('vscode').action('editor.action.formatDocument')<CR>")
keymap({"n", "v"}, "<leader>fs", "<cmd>lua require('vscode').action('workbench.action.files.save')<CR>")
keymap({"i"}, "<C-a>", "<cmd>lua require('vscode').action('editor.action.selectAll')<CR>")
keymap({"i"}, "<C-c>", "<cmd>lua require('vscode').action('editor.action.clipboardCopyAction')<CR>")
keymap({"i"}, "<C-v>", "<cmd>lua require('vscode').action('editor.action.clipboardPasteAction')<CR>")
keymap({"i"}, "<C-x>", "<cmd>lua require('vscode').action('editor.action.clipboardCutAction')<CR>")

-- pane keymaps
keymap({"n", "v"}, "<leader>e", "<cmd>lua require('vscode').action('workbench.action.toggleSidebarVisibility')<CR>")
keymap({"n", "v"}, "<leader>i", "<cmd>lua require('vscode').action('workbench.action.toggleAuxiliaryBar')<CR>")
keymap({"n", "v"}, "<leader>cz", "<cmd>lua require('vscode').action('workbench.action.toggleZenMode')<CR>")
keymap({"n", "v"}, "<C-t>", "<cmd>lua require('vscode').action('workbench.action.toggleEditorGroupLayout')<CR>")
keymap({"n", "v"}, "<C-h>", "<cmd>lua require('vscode').action('workbench.action.focusLeftGroup')<CR>")
keymap({"n", "v"}, "<C-l>", "<cmd>lua require('vscode').action('workbench.action.focusRightGroup')<CR>")
keymap({"n", "v"}, "<C-j>", "<cmd>lua require('vscode').action('workbench.action.focusAboveGroup')<CR>")
keymap({"n", "v"}, "<C-k>", "<cmd>lua require('vscode').action('workbench.action.focusBelowGroup')<CR>")
keymap({"n", "v"}, "<leader><C-h>", "<cmd>lua require('vscode').action('workbench.action.moveActiveEditorGroupLeft')<CR>")
keymap({"n", "v"}, "<leader><C-l>", "<cmd>lua require('vscode').action('workbench.action.moveActiveEditorGroupRight')<CR>")
keymap({"n", "v"}, "<leader><C-j>", "<cmd>lua require('vscode').action('workbench.action.moveActiveEditorGroupUp')<CR>")
keymap({"n", "v"}, "<leader><C-k>", "<cmd>lua require('vscode').action('workbench.action.moveActiveEditorGroupDown')<CR>")
keymap({"n", "v"}, "<leader><C-w>", "<cmd>lua require('vscode').action('workbench.action.closeGroup')<CR>")
keymap({"n", "v"}, "<leader>gh", "<cmd>lua require('vscode').action('workbench.action.newGroupLeft')<CR>")
keymap({"n", "v"}, "<leader>gl", "<cmd>lua require('vscode').action('workbench.action.newGroupRight')<CR>")
keymap({"n", "v"}, "<leader>gj", "<cmd>lua require('vscode').action('workbench.action.newGroupAbove')<CR>")
keymap({"n", "v"}, "<leader>gk", "<cmd>lua require('vscode').action('workbench.action.newGroupBelow')<CR>")

-- tab action keymaps
keymap({"n", "v"}, "H", "<cmd>lua require('vscode').action('workbench.action.previousEditor')<CR>")
keymap({"n", "v"}, "L", "<cmd>lua require('vscode').action('workbench.action.nextEditor')<CR>")
keymap({"n", "v"}, "<C-left>", "<cmd>lua require('vscode').action('workbench.action.moveEditorLeftInGroup')<CR>")
keymap({"n", "v"}, "<C-right>", "<cmd>lua require('vscode').action('workbench.action.moveEditorRightInGroup')<CR>")
keymap({"n", "v"}, "<leader>t1", "<cmd>lua require('vscode').action('workbench.action.openEditorAtIndex1')<CR>")
keymap({"n", "v"}, "<leader>t2", "<cmd>lua require('vscode').action('workbench.action.openEditorAtIndex2')<CR>")
keymap({"n", "v"}, "<leader>t3", "<cmd>lua require('vscode').action('workbench.action.openEditorAtIndex3')<CR>")
keymap({"n", "v"}, "<leader>t4", "<cmd>lua require('vscode').action('workbench.action.openEditorAtIndex4')<CR>")
keymap({"n", "v"}, "<leader>t5", "<cmd>lua require('vscode').action('workbench.action.openEditorAtIndex5')<CR>")
keymap({"n", "v"}, "<leader>t6", "<cmd>lua require('vscode').action('workbench.action.openEditorAtIndex6')<CR>")
keymap({"n", "v"}, "<leader>t7", "<cmd>lua require('vscode').action('workbench.action.openEditorAtIndex7')<CR>")
keymap({"n", "v"}, "<leader>t8", "<cmd>lua require('vscode').action('workbench.action.openEditorAtIndex8')<CR>")
keymap({"n", "v"}, "<leader>t9", "<cmd>lua require('vscode').action('workbench.action.openEditorAtIndex9')<CR>")


-- harpoon keymaps
keymap({"n", "v"}, "<leader>ha", "<cmd>lua require('vscode').action('vscode-harpoon.addEditor')<CR>")
keymap({"n", "v"}, "<leader>ho", "<cmd>lua require('vscode').action('vscode-harpoon.editorQuickPick')<CR>")
keymap({"n", "v"}, "<leader>he", "<cmd>lua require('vscode').action('vscode-harpoon.editEditors')<CR>")
keymap({"n", "v"}, "<leader>h1", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor1')<CR>")
keymap({"n", "v"}, "<leader>h2", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor2')<CR>")
keymap({"n", "v"}, "<leader>h3", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor3')<CR>")
keymap({"n", "v"}, "<leader>h4", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor4')<CR>")
keymap({"n", "v"}, "<leader>h5", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor5')<CR>")
keymap({"n", "v"}, "<leader>h6", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor6')<CR>")
keymap({"n", "v"}, "<leader>h7", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor7')<CR>")
keymap({"n", "v"}, "<leader>h8", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor8')<CR>")
keymap({"n", "v"}, "<leader>h9", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor9')<CR>")

-- project manager keymaps
keymap({"n", "v"}, "<leader>pa", "<cmd>lua require('vscode').action('projectManager.saveProject')<CR>")
keymap({"n", "v"}, "<leader>po", "<cmd>lua require('vscode').action('projectManager.listProjectsNewWindow')<CR>")
keymap({"n", "v"}, "<leader>pe", "<cmd>lua require('vscode').action('projectManager.editProjects')<CR>")
