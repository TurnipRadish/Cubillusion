tp @s ~ ~1000 ~

# 设置玩家游戏模式分数（0=生存，1=创造，2=冒险，3=旁观）
scoreboard players set @s gamemode 0
scoreboard players set @s[gamemode=creative] gamemode 1
scoreboard players set @s[gamemode=adventure] gamemode 2
scoreboard players set @s[gamemode=spectator] gamemode 3

# 创造模式下的效果：高空召唤末影水晶并自伤
gamemode creative
execute positioned ~ ~1000 ~ anchored eyes positioned ^ ^ ^-0.1 summon end_crystal run damage @s 1

# 根据分数切换实际游戏模式
gamemode survival @s[scores={gamemode=0}]
gamemode adventure @s[scores={gamemode=2}]
gamemode spectator @s[scores={gamemode=3}]

# 传送到高空后返回原点

tp @s ~ ~ ~