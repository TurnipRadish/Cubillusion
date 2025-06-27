scoreboard players set #flag var 0
execute on attacker if entity @s[gamemode=!creative] run scoreboard players set #flag var 1

execute if score #flag var matches 1 on passengers as @s[tag=cubi.wooden_seat] run function test:block/test/destory/1

execute on passengers as @s[tag=aj.cubi.root] run function animated_java:cubi/remove/this
execute on passengers run kill @s
kill @s

