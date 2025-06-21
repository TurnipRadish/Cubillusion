summon text_display ~ ~1000 ~ \
{\
  Tags:["cubi.box", "cubi.base", "init"], \
  Passengers: [ \
    { \
      id:"minecraft:shulker", \
      Tags: ["cubi.box"], \
      Invulnerable: 1b, \
      active_effects:[{id:"invisibility",duration:-1, show_particles:0b}], \
      attributes:[{id:scale, base:1.0}], \
      DeathLootTable:"", \
      Silent: 1b, \
      NoAI: 1b \
    } \
  ] \
}
scoreboard players operation @e[type=text_display,tag=init] cubi.box_id = @s cubi.box_id
tp @e[type=text_display, tag=init] ~ ~1 ~
tag @e[type=text_display, tag=init] remove init
