execute if entity @s[tag=cubi.player.auto_swim] run function cubi:player/act/swim

execute if entity @s[tag=cubi.player.raycast] run function cubi:player/act/raycast


# execute as @e[distance=..16,tag=cubi.entity.player_target] run effect give @s glowing 1 0

# execute as @e[distance=..16,tag=cubi.entity.player_target] run tag @s remove cubi.entity.player_target

# execute as @e[distance=..16,tag=!cubi.entity.player_target] run effect clear @s glowing
