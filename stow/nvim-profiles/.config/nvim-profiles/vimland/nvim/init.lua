--
function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end


--local vimrc = vim.fn.stdpath("%USERPROFILE%\AppData\Local\nvim\myinit.vim")
--vars
--local vimrc = vim.fn.stdpath("config") .. "\\myinit.vim"
--local AutoloadDirPath = vim.fn.stdpath("config") .. "\\autoload"


-- if (vim.loop.os_uname().sysname == "Windows_NT") then
	-- print ("Windows!")
	-- -- load VimPlug
	-- if (file_exists(vim.fn.stdpath("config") .. "\\autoload\\plug.vim")) then
		-- print ("plug.vim exists!")

	-- else
		-- os.execute("mkdir " .. (vim.fn.stdpath("config") .. "\\autoload"))
		-- os.execute("curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim > " .. AutoloadDirPath .. "\\plug.vim")
		-- --os.mkdir(AutoloadDirPath)
		-- --vim.cmd.source(vimrc)
-- --		vim.api.nvim_create_autocmd(
-- --    'vimEnter',
-- --    {
-- --        pattern='*',
-- --        command='PlugInstall'
-- --    }
-- --)
	-- end
-- end

--local Plug = vim.fn['plug#']

--vim.call('plug#begin')
--	Plug 'morhetz/gruvbox'
--vim.call('plug#end')


--vim.cmd.source(vimrc)
require("plugins")
require("options")
require("core.utils")
require("keymaps")
require("autocommands")

require("lsp")
