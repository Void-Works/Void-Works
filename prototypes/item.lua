local voidTint = {
    r = settings.startup["tint-r"].value,
    g = settings.startup["tint-g"].value,
    b = settings.startup["tint-b"].value,
    a = 1
}

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
