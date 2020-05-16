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

script.on_event({defines.events.on_tick}, function ()
    processPipes()
end)

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

script.on_event({defines.events.on_built_entity}, function (event)
    createEntity(event.created_entity)
end)

script.on_event({defines.events.on_robot_built_entity}, function (event)
    createEntity(event.created_entity)
end)

script.on_event({defines.events.script_raised_built}, function (event)
    createEntity(event.entity or event.created_entity)
end)

script.on_event({defines.events.script_raised_revive}, function (event)
    createEntity(event.entity or event.created_entity)
end)

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
