execute unless score @s cubi.box_id matches -2147483648.. run scoreboard players add #cubi.max_box_id cubi.box_id 1
execute unless score @s cubi.box_id matches -2147483648.. run scoreboard players operation @s cubi.box_id = #cubi.max_box_id cubi.box_id
execute if predicate {\
  condition:"minecraft:entity_properties", \
  entity:"this", \
  predicate:{type_specific:{type:"player", input:{sneak:1b, sprint:1b}} } \
} \
run scoreboard players add @s cubi.shift 4
scoreboard players operation @s cubi.shift /= #2 var

scoreboard players operation #temp var = @s cubi.box_id

execute if score @s cubi.shift matches 2 positioned ~ ~1 ~ run return run function cubi:player/entity/box/summon_box

execute if score @s cubi.shift matches 3 positioned ~ ~1 ~ as @e[tag=cubi.box,tag=cubi.base,type=text_display,sort=nearest] if score @s cubi.box_id = #temp var run return run tp @s ~ ~ ~

execute if score @s cubi.shift matches 1 positioned ~ ~1 ~ as @e[tag=cubi.box,tag=cubi.base,type=text_display,sort=nearest] if score @s cubi.box_id = #temp var run return run function cubi:player/entity/box/destory

# execute as @e[distance=..3] at @s run particle end_rod ~ ~ ~ 0 0 0 0 0
