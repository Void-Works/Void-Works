--[[
Copyright (c) 2019 Void Works
See LICENSE in the project directory for license information.

Most of the credit for this mod goes to authors below whose code was compiled:

    Original "Fluid Void" mod by Rseding91 - redesigned by Nibuja05 (control code used for fluid voiding)

    "High Pressure Pipe" mod by kendfrey (code used for void pipe creation and tinting)

    "Void Chest +" mod by Optera (code used for void chest creation and function)
--]]

local void_pipe = table.deepcopy(data.raw.item["pipe"])
void_pipe.name = "void-pipe"
void_pipe.place_result = "void-pipe"
void_pipe.icon = nil
void_pipe.icons = {{icon = data.raw.item["pipe"].icon, tint = voidTint}}
void_pipe.order = void_pipe.order .. "a"

local void_chest = table.deepcopy(data.raw.item["steel-chest"])
void_chest.name = "void-chest"
void_chest.place_result = "void-chest"
void_chest.icon = nil
void_chest.icons = {{icon = data.raw.item["steel-chest"].icon, tint = voidTint}}
void_chest.order = "a[items]-c[void-chest]"

data:extend({
    void_pipe,
    void_chest,
})
