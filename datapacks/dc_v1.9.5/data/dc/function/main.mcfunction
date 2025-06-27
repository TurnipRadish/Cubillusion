execute as @e[type=marker,tag=dc_place] at @s positioned ~ ~0.5 ~ align xyz positioned ~.5 ~ ~.5 run function dc:construct/main

execute if score #installing dc_options matches 1 run function dc:index/_install/continue

#execute positioned 0.0 0.0 0.0 unless entity @e[tag=dc_math_temp,distance=..2,type=item_display] run summon item_display 0 0 0 {Tags:[dc_math_temp]}