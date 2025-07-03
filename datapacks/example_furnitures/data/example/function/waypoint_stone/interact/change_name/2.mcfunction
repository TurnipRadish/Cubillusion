data modify entity @s CustomNameVisible set value true

execute if data entity @s CustomName run data modify storage cubi:data args.text set from entity @s CustomName

execute unless data entity @s CustomName run data modify storage cubi:data args.text set value {"text":"?", "color": "white"}

data modify storage cubi:data args.text.text set from storage cubi:data args.item.components.'minecraft:custom_name'

data modify entity @s CustomName set from storage cubi:data args.text
