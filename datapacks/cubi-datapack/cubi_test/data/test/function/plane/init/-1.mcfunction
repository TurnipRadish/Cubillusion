data merge entity @s {\
  data:{id:'cubi:plane'},\
  Tags:["cubi.plane_body"],\
  Invisible:true,\
  NoGravity:false,\
  Silent:true,\
  Small:true,\
  Invulnerable:true\
}

# summon pig ~ ~ ~ {NoAI:1b, Silent:1b}
# ride @n[type=pig] mount @s

execute at @s summon interaction run function test:plane/init/0

