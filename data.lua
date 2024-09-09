local funcs = require("__DeadlockBlackRubberBelts__/code/functions")

-- Update belt item icon
local neo_belt_item_name = "ei_neo-belt"
local neo_belt_mask_color = {0.69, 0, 0.78, 0.2}

funcs.replace_item_icon(neo_belt_item_name, "rubber-belt-steel")
funcs.add_mask_to_item_icon(neo_belt_item_name, "rubber-belt-mask", neo_belt_mask_color)
funcs.copy_item_icons_to_entity("transport-belt", neo_belt_item_name)

-- Update belt entities animation sets
local neo_belt = data.raw["transport-belt"]["ei_neo-belt"]
local neo_ug_belt = data.raw["underground-belt"]["ei_neo-underground-belt"]
local neo_splitter = data.raw["splitter"]["ei_neo-splitter"]

neo_belt.belt_animation_set.animation_set = funcs.get_belt_animation_set(neo_belt_mask_color, "steel")
neo_ug_belt.belt_animation_set.animation_set = funcs.get_belt_animation_set(neo_belt_mask_color, "steel")
neo_splitter.belt_animation_set.animation_set = funcs.get_belt_animation_set(neo_belt_mask_color, "steel")
