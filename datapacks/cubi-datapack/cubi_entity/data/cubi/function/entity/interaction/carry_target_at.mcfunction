# tag @s add target_interaction

$summon item_display ~$(x) ~$(y) ~$(z) {Tags:["init", "cubi.vehicle"]} 

execute on target run ride @s mount @n[distance=..1,type=item_display,tag=init]
tag @n[distance=..1,type=item_display,tag=init] remove init

execute on target at @n[distance=..1,type=item_display] run rotate @s ~-180 ~

# tag @s remove target_interaction
