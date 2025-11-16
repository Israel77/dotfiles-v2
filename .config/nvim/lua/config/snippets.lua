local ls = require("luasnip")
local extras = require("luasnip.extras")
local extras_fmt = require("luasnip.extras.fmt")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = extras.rep
local fmt = extras_fmt.fmt

ls.config.set_config({
    history = true,
    enable_autosnippets = true,
    updateevents = "TextChanged,TextChangedI",
})
