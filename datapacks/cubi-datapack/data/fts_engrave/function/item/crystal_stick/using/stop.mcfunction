item modify entity @s weapon.mainhand {\
  function:"set_custom_model_data",\
  strings: {mode:"replace_all", values:[]}\
}

# execute as @n[predicate=fts_engrave:item/crystal_stick/is_powerball,distance=..32] run kill @s

say @n[predicate=fts_engrave:item/crystal_stick/is_powerball,distance=..32]

# execute if score @s item_using_time matches 50.. as @e[predicate=fts_engrave:item/crystal_stick/is_powerball,distance=..32] at @s run tp @s ^ ^ ^64

summon snowball ~ ~ ~ {Tags:["temp"], Motion:[0d, 1d, 0d]}
ride @n[predicate=fts_engrave:item/crystal_stick/is_powerball] mount @n[type=snowball] 

rotate @n[predicate=fts_engrave:item/crystal_stick/is_powerball,distance=..32] ~ ~

