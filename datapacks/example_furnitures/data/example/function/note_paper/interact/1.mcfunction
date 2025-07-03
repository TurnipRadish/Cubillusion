data modify storage cubi:data args.entity.id set value 'text_display'

data modify storage cubi:data args.entity.nbt set value {\
  "Tags": ["cubi.entity", "example.note_paper", "init"],\
  "background": 0,\
  "line_width": 48,\
  "transformation": {\
    translation:[0f,-0.35f,0f],\
    left_rotation:[0f,0f,0f,1f],\
    scale:[0.25f,0.25f,0.25f],\
    right_rotation:[0f,0f,0f,1f]\
  }\
}
# 设置旋转
data modify storage cubi:data args.entity.nbt.transformation.left_rotation set from entity @n[distance=..1,tag=example.note_paper,type=item_display] transformation.left_rotation
# 设置文字
data modify storage cubi:data args.entity.nbt.text set value [{text:"", "color": "black"}]
data modify storage cubi:data args.entity.nbt.text append from storage cubi:data args.item.components.'minecraft:custom_name'
# 召唤以应用数据
function cubi:macro/summon with storage cubi:data args.entity

# execute if entity @n[type=text_display,distance=..1,tag=init] run say @s

ride @n[type=text_display,distance=..1,tag=init] mount @s

tag @s add has_note
tag @n[type=text_display,distance=..1,tag=init] remove init
