scoreboard objectives add var dummy
scoreboard objectives add gamemode dummy

scoreboard players set #cubi.raycast_loop_times var 0
scoreboard players set #2 var 2
scoreboard players set #3 var 3

data modify storage cubi:data modify set value {\
  input: {},\
  output: {},\
}

forceload add -16 -16 16 16

execute unless entity @n[tag=cubi.item_handler] run summon item 0 0 0 {Tags:["cubi.item_handler"], Item:{id:"stone", components:{item_model:"minecraft:air"}}, NoGravity:true, PickupDelay:-1, Age:-32768s}

tellraw @a "cubi: loaded"

execute unless entity @p run return run schedule function cubi:load 1s

function cubi:event/load
