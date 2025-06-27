data merge entity @s {\
  data:{id:'cubi:plane'}\
}

ride @s mount @n[distance=..0.1,tag=cubi.plane_body,type=armor_stand]

# execute summon item_display run function test:plane/init/1

execute at @s run function animated_java:blueprint/summon {args:{}}
execute at @s run data modify entity @n[distance=..1,type=item_display] start_interpolation set value 0
execute at @s run data modify entity @n[distance=..1,type=item_display] interpolation_duration set value 1
execute at @s run data modify entity @n[distance=..1,type=item_display] teleport_duration set value 1

ride @n[distance=..0.1,tag=aj.blueprint.root] mount @s
