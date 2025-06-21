function cubi:get_related_entity {name:"plant"}

scoreboard players set #flag var 0
execute as @n[x=0,y=0,z=0,tag=cubi.item_handler,distance=..1] on origin store result score #flag var run function test:block/vase/interact_block/put_plant

execute if score #flag var matches 1 run execute if items entity @s[gamemode=survival] weapon.mainhand * run item modify entity @s weapon.mainhand {function:"set_count", add:true, count:-1}
