data modify storage aj:temp args.animation set value {}

execute store result score #temp var run time query daytime
scoreboard players set const var 20
scoreboard players operation #temp var %= #const var

execute store result storage aj:temp args.frame int 1 run scoreboard players get #temp var
data modify storage aj:temp args.animation set value "update"
data modify storage aj:temp args.start_animation set value true

function animated_java:example_floor_clock/summon with storage aj:temp {}
