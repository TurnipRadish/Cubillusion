data modify storage cubi:data args.text set value [{text:"", "color": "black"}]
data modify storage cubi:data args.text append from storage cubi:data args.item.components.'minecraft:custom_name'

data modify entity @s text set from storage cubi:data args.text

