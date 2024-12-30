-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "resume" }
)
local opts = { noremap = true, silent = true }
-- Normal-mode commands
vim.keymap.set('n', '<A-j>', ':MoveLine(1)<CR>', opts)
vim.keymap.set('n', '<A-k>', ':MoveLine(-1)<CR>', opts)
vim.keymap.set('n', '<A-h>', ':MoveHChar(-1)<CR>', opts)
vim.keymap.set('n', '<A-l>', ':MoveHChar(1)<CR>', opts)
vim.keymap.set('n', '<leader>wf', ':MoveWord(1)<CR>', opts)
vim.keymap.set('n', '<leader>wb', ':MoveWord(-1)<CR>', opts)

-- Visual-mode commands
vim.keymap.set('v', '<A-j>', ':MoveBlock(1)<CR>', opts)
vim.keymap.set('v', '<A-k>', ':MoveBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-h>', ':MoveHBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-l>', ':MoveHBlock(1)<CR>', opts)
-- Unmap the existing `leader gh`
vim.api.nvim_set_keymap("n", "<leader>gh", "", { noremap = true, silent = true })
local wk = require("which-key")

wk.add({
  { "<leader>g", group = "Git" },
  { "<leader>gh", group = "Github", desc = "Github" },
  { "<leader>ghc", group = "Commits" },
  { "<leader>ghcc", "<cmd>GHCloseCommit<cr>", desc = "Close" },
  { "<leader>ghce", "<cmd>GHExpandCommit<cr>", desc = "Expand" },
  { "<leader>ghco", "<cmd>GHOpenToCommit<cr>", desc = "Open To" },
  { "<leader>ghcp", "<cmd>GHPopOutCommit<cr>", desc = "Pop Out" },
  { "<leader>ghcz", "<cmd>GHCollapseCommit<cr>", desc = "Collapse" },
  { "<leader>ghi", group = "Issues" },
  { "<leader>ghip", "<cmd>GHPreviewIssue<cr>", desc = "Preview" },
  { "<leader>ghl", group = "Litee" },
  { "<leader>ghlt", "<cmd>LTPanel<cr>", desc = "Toggle Panel" },
  { "<leader>ghp", group = "Pull Request" },
  { "<leader>ghpc", "<cmd>GHClosePR<cr>", desc = "Close" },
  { "<leader>ghpd", "<cmd>GHPRDetails<cr>", desc = "Details" },
  { "<leader>ghpe", "<cmd>GHExpandPR<cr>", desc = "Expand" },
  { "<leader>ghpo", "<cmd>GHOpenPR<cr>", desc = "Open" },
  { "<leader>ghpp", "<cmd>GHPopOutPR<cr>", desc = "PopOut" },
  { "<leader>ghpr", "<cmd>GHRefreshPR<cr>", desc = "Refresh" },
  { "<leader>ghpt", "<cmd>GHOpenToPR<cr>", desc = "Open To" },
  { "<leader>ghpz", "<cmd>GHCollapsePR<cr>", desc = "Collapse" },
  { "<leader>ghr", group = "Review" },
  { "<leader>ghrb", "<cmd>GHStartReview<cr>", desc = "Begin" },
  { "<leader>ghrc", "<cmd>GHCloseReview<cr>", desc = "Close" },
  { "<leader>ghrd", "<cmd>GHDeleteReview<cr>", desc = "Delete" },
  { "<leader>ghre", "<cmd>GHExpandReview<cr>", desc = "Expand" },
  { "<leader>ghrs", "<cmd>GHSubmitReview<cr>", desc = "Submit" },
  { "<leader>ghrz", "<cmd>GHCollapseReview<cr>", desc = "Collapse" },
  { "<leader>ght", group = "Threads" },
  { "<leader>ghtc", "<cmd>GHCreateThread<cr>", desc = "Create" },
  { "<leader>ghtn", "<cmd>GHNextThread<cr>", desc = "Next" },
  { "<leader>ghtt", "<cmd>GHToggleThread<cr>", desc = "Toggle" },
})
