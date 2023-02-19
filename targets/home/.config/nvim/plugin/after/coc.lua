-- adapted from: https://github.com/samhvw8/mvim/blob/master/lua/core/coc.lua

local g = vim.g
local api = vim.api
local cmd = api.nvim_command
local fn = vim.fn



local function register_mappings(mappings, default_options)
	for mode, mode_mappings in pairs(mappings) do
		for _, mapping in pairs(mode_mappings) do
			local options = #mapping == 3 and table.remove(mapping) or default_options
			local prefix, cmd = unpack(mapping)
			pcall(vim.api.nvim_set_keymap, mode, prefix, cmd, options)
		end
	end
end

function _G.show_docs()
    local cw = fn.expand('<cword>')
    if fn.index({ 'vim', 'help' }, vim.bo.filetype) >= 0 then
        cmd('h ' .. cw)
    elseif api.nvim_eval('coc#rpc#ready()') then
        fn.CocActionAsync('doHover')
    else
        cmd('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end

local mapppings = {
        { "K", '<CMD>lua _G.show_docs()<CR>', { silent = true } },
      }

