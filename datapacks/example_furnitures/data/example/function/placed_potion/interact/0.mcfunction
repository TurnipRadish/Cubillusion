# this entity = interaction
execute on target unless items entity @s weapon.mainhand potion run return fail

execute on target if items entity @s weapon.mainhand potion run data modify storage cubi:data args.item set from entity @s SelectedItem

execute on passengers as @s[tag=example.placed_potion,type=item_display] run data modify entity @s item.components."minecraft:potion_contents" set from storage cubi:data args.item.components."minecraft:potion_contents"
