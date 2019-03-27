--[[
Copyright (c) 2019 Void Works
See LICENSE in the project directory for license information.

Most of the credit for this mod goes to authors below whose code was compiled:

    Original "Fluid Void" mod by Rseding91 - redesigned by Nibuja05 (control code used for fluid voiding)

    "High Pressure Pipe" mod by kendfrey (code used for void pipe creation and tinting)

    "Void Chest +" mod by Optera (code used for void chest creation and function)
--]]

data:extend(
    {
        {
            type = "double-setting",
            name = "tint-r",
            setting_type = "startup",
            minimum_value = 0,
            maximum_value = 1,
            default_value = 0.1,
            order = "aa",
        },
        {
            type = "double-setting",
            name = "tint-g",
            setting_type = "startup",
            minimum_value = 0,
            maximum_value = 1,
            default_value = 0,
            order = "ab",
        },
        {
            type = "double-setting",
            name = "tint-b",
            setting_type = "startup",
            minimum_value = 0,
            maximum_value = 1,
            default_value = 0.75,
            order = "ac",
        },
        {
            type = "double-setting",
            name = "slots",
            setting_type = "startup",
            minimum_value = 1,
            maximum_value = 10,
            default_value = 5,
            order = "ba",
        },
    }
)
