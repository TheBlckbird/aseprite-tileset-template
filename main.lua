function script_path()
    local str = debug.getinfo(2, "S").source:sub(2)
    return str:match("(.*/)")
end

function init(plugin)
    print("Initializing Tileset Template Creator")

    plugin:newCommand {
        id="NewTilesetTemplate",
        title="New Tileset Template (3x3 minimal 16x16px)",
        group="file_new",
        onclick=function ()
            local tilset = Image{ fromFile=script_path().."tileset_template.png" }
            local sprite = Sprite(192, 64)
            sprite.cels[1].image:drawImage(tilset, Point(0,0))
        end
    }
end
