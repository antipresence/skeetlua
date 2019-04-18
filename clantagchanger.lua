local set_tag = client.set_clan_tag
local ui_checkbox = ui.new_checkbox
local ui_textbox = ui.new_textbox
local ui_get = ui.get
local ui_visible = ui.set_visible
local ui_reference = ui.reference

local ctag_box = ui_checkbox("Misc", "Miscellaneous", "Clantag Changer")
local ctag_input = ui_textbox("Misc", "Miscellaneous", "Clantag Changer", "Input")
ui_visible(ctag_input, false)

local function setTag()
	local tag = ui_get(ctag_input)
	set_tag(tag)
end

local set_button = ui.new_button("Misc", "Miscellaneous", "Set Tag", setTag)
ui_visible(ui_reference("Misc", "Miscellaneous", "Set Tag"), false)

local function clantag()
if ui_get(ctag_box) == true then
	ui_visible(ctag_input, true)
	ui_visible(ui_reference("Misc", "Miscellaneous", "Set Tag"), true)
else 
	ui_visible(ctag_input, false)
	ui_visible(ui_reference("Misc", "Miscellaneous", "Set Tag"), false)
	set_tag()
end
end

ui.set_callback(ctag_box, clantag)
