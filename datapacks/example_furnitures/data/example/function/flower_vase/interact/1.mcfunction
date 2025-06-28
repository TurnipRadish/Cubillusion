summon block_display ~ ~ ~ {\
  Tags:["cubi.flower_vase","cubi.entity"],\
  "transformation": [\
    1f, 0f, 0f, -0.5f,\
    0f, 1f, 0f, 0.8f,\
    0f, 0f, 1f, -0.50f,\
    0f, 0f, 0f, 1f\
  ]\
}
say @s
execute on target run function cubi:player/weapon/get_for_args

data modify entity @n[type=block_display,distance=..0.1] block_state.Name set from storage cubi:data args.item.id
data modify entity @n[type=block_display,distance=..0.1] data.item set from storage cubi:data args.item

execute on target if entity @s[gamemode=!creative] run function cubi:player/weapon/used_one

ride @n[type=block_display,distance=..0.1] mount @s
tag @s add has_flower
