return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { { "nvim-tree/nvim-web-devicons", opts = {} } },
  lazy = false,
  config = function() 
    vim.keymap.set("n", "<leader><leader>", vim.cmd.Oil)
    require("oil").setup({
      columns = {
	"icon",
	-- "permissions",
	--"size",
	"mtime",
      },
      win_options = {
	wrap = false,
	signcolumn = "no",
	cursorcolumn = false,
	foldcolumn = "0",
	spell = false,
	list = false,
	conceallevel = 3,
	concealcursor = "nvic",
      },

      delete_to_trash = true,
      skip_confirm_for_simple_edits = false,
      prompt_save_on_select_new_entry = true,
      cleanup_delay_ms = 2000,
      lsp_file_methods = {
	enabled = true,
	timeout_ms = 1000,
	autosave_changes = false,
      },
      constrain_cursor = "editable",
      watch_for_changes = false,
      view_options = {
	show_hidden = true,
	is_hidden_file = function(name, bufnr)
	  local m = name:match("^%.")
	  return m ~= nil
	end,
	is_always_hidden = function(name, bufnr)
	  return false
	end,
	natural_order = "fast",
	case_insensitive = false,
	sort = {
	  { "type", "asc" },
	  { "name", "asc" },
	},
	highlight_filename = function(entry, is_hidden, is_link_target, is_link_orphan)
	  return nil
	end,
      },
      git = {
	-- Return true to automatically git add/mv/rm files
	add = function(path)
	  return true
	end,
	mv = function(src_path, dest_path)
	  return true
	end,
	rm = function(path)
	  return true
	end,
      },
    })
  end
}
