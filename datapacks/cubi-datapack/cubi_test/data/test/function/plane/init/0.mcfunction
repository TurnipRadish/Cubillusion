data merge entity @s {\
  data:{id:'cubi:plane'}\
}

ride @s mount @n[distance=..0.1,tag=cubi.plane_body,type=armor_stand]

execute summon item_display run function test:plane/init/1
