voidTint =
{
    r = settings.startup["tint-r"].value,
    g = settings.startup["tint-g"].value,
    b = settings.startup["tint-b"].value,
    a = 1
}

function tintPictures(pictures, tint)
    for _, picture in pairs(pictures) do
        picture.tint = tint;
        if picture.hr_version then
            picture.hr_version.tint = tint;
        end
    end
end

local void_pipe = table.deepcopy(data.raw["pipe"]["pipe"])
void_pipe.type = "pipe"
void_pipe.name = "void-pipe"
void_pipe.minable.result = "void-pipe"
void_pipe.fluid_box.height = 1
void_pipe.pictures = table.deepcopy(data.raw["pipe"]["pipe"].pictures)
tintPictures(void_pipe.pictures, voidTint)

local void_chest = table.deepcopy(data.raw["container"]["steel-chest"])
void_chest.type = "infinity-container"
void_chest.name = "void-chest"
void_chest.minable.result = "void-chest"
void_chest.order = "a[items]-c[void-chest]"
void_chest.erase_contents_when_mined = true
void_chest.logistic_mode = nil
void_chest.gui_mode = "none" -- all, none, admins
void_chest.inventory_size = 5
void_chest.circuit_wire_max_distance = 0
void_chest.enable_inventory_bar = false
void_chest.picture.layers =
{
    {
        filename = "__base__/graphics/entity/steel-chest/steel-chest.png",
        priority = "extra-high",
        width = 32,
        height = 40,
        shift = util.by_pixel(0, -0.5),
        tint = voidTint,
        hr_version =
        {
            filename = "__base__/graphics/entity/steel-chest/hr-steel-chest.png",
            priority = "extra-high",
            width = 64,
            height = 80,
            shift = util.by_pixel(-0.25, -0.5),
            scale = 0.5,
            tint = voidTint,
        }
    },
    {
        draw_as_shadow = true,
        filename = "__base__/graphics/entity/steel-chest/steel-chest-shadow.png",
        height = 22,
        hr_version = {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/steel-chest/hr-steel-chest-shadow.png",
            height = 46,
            priority = "extra-high",
            scale = 0.5,
            shift = {
                0.3828125,
                0.25
            },
            width = 110
        },
        priority = "extra-high",
        shift = {
            0.375,
            0.234375
        },
        width = 56
    },
}

data:extend({
    void_pipe,
    void_chest,
})
