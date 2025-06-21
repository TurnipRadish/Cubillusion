data modify storage cubi:data args.player set from entity @p[distance=..0.1] {}

execute at @s summon armor_stand run function test:plane/init/-1

kill @s
