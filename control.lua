--[[
Copyright (c) 2019 Void Works
See LICENSE in the project directory for license information.

Most of the credit for this mod goes to authors below whose code was compiled:

    Original "Fluid Void" mod by Rseding91 - redesigned by Nibuja05 (control code used for fluid voiding)

    "High Pressure Pipe" mod by kendfrey (code used for void pipe creation and tinting)

    "Void Chest +" mod by Optera (code used for void chest creation and function)
--]]

require "util"

script.on_event({defines.events.on_built_entity}, function (event) createEntity(event.created_entity) end)
script.on_event({defines.events.on_robot_built_entity}, function (event) createEntity(event.created_entity) end)
script.on_event({defines.events.on_tick}, function (e) processPipes() end)

function processPipes()
    if global.pipes ~= nil then
        for k,pipe in pairs(global.pipes) do
            if pipe.valid then
                pipe.fluidbox[1] = nil
            else
                table.remove(global.pipes, k)
                if #global.pipes == 0 then
                    global.pipes = nil
                end
            end
        end
    end
end

function createEntity(entity)
    if entity.name == "void-chest" then
        entity.infinity_container_filters = {}
        entity.remove_unfiltered_items = true
    end
    if entity.name == "void-pipe" then
        if global.pipes == nil then
            global.pipes = {}
        end
        table.insert(global.pipes, entity)
    end
end

do
    local function init_chests()
        global.VoidChests = nil
        for _, surface in pairs(game.surfaces) do
            chests = surface.find_entities_filtered {
                name = "void-chest",
            }
            for _, chest in pairs(chests) do
                chest.infinity_container_filters = {}
                chest.remove_unfiltered_items = true
            end
        end
    end

    script.on_init(function()
        init_chests()
    end)

    script.on_configuration_changed(function(data)
        init_chests()
    end)

end
