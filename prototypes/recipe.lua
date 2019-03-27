--[[
Copyright (c) 2019 Void Works
See LICENSE in the project directory for license information.

Most of the credit for this mod goes to authors below whose code was compiled:

    Original "Fluid Void" mod by Rseding91 - redesigned by Nibuja05 (control code used for fluid voiding)

    "High Pressure Pipe" mod by kendfrey (code used for void pipe creation and tinting)

    "Void Chest +" mod by Optera (code used for void chest creation and function)
--]]

data:extend({
    {
        type = "recipe",
        name = "void-pipe",
        enabled = "false",
        ingredients =
        {
            {"pipe", 1},
            {"electronic-circuit", 1},
        },
        result = "void-pipe",
    },
    {
        type = "recipe",
        name = "void-chest",
        enabled = "false",
        ingredients =
        {
            {"steel-chest", 1},
            {"steel-furnace", 1},
            {"electronic-circuit", 5}
        },
        result = "void-chest"
    },
})
