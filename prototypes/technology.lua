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
        type = "technology",
        name = "void-works",
        icon = "__Void-Works__/graphics/research/void.png",
        icon_size = 128,
        prerequisites = {
            "fluid-handling",
            "advanced-material-processing",
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "void-pipe",
            },
            {
                type = "unlock-recipe",
                recipe = "void-chest",
            },
        },
        unit =
        {
            time = 30,
            count = 100,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
            },
        },
        order = "c-a",
    },
})
