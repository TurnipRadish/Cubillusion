# this entity = player
# this position = the raycast hit point
tellraw @s[tag=debug] "init note_paper"

playsound minecraft:block.glass.place

# 获取面法向量
execute store result score #normal_x var run data get storage bs:out raycast.hit_normal[0]
execute store result score #normal_y var run data get storage bs:out raycast.hit_normal[1]
execute store result score #normal_z var run data get storage bs:out raycast.hit_normal[2]
# 根据放置面设置rotation
function cubi:entity/rotation/get_from_normal
execute unless score #normal_y var matches 0 store result storage cubi:data args.rotation[0] float 1.0 run data get entity @s Rotation[0]
# 设置变换
function cubi:entity/display/transformation/get_default
data modify storage cubi:data args.transformation.translation set value [0f,-0.25f,0f]
execute if score #normal_y var matches 1 run data modify storage cubi:data args.transformation.translation[2] set value -0.25f
# 设置交互实体偏移
data modify storage cubi:data args.offset_y set value 0
execute if score #normal_y var matches -1 run data modify storage cubi:data args.offset_y set value -0.25
# 随机模型变体
data modify storage cubi:data args.item.components.'minecraft:custom_model_data'.strings set value ["1", "2", "3"]

execute store result score #temp var run random value 1..3
execute if score #temp var matches 1 run data modify storage cubi:data args.item.components.'minecraft:custom_model_data'.strings prepend from storage cubi:data args.item.components.'minecraft:custom_model_data'.strings[0]
execute if score #temp var matches 2 run data modify storage cubi:data args.item.components.'minecraft:custom_model_data'.strings prepend from storage cubi:data args.item.components.'minecraft:custom_model_data'.strings[1]
execute if score #temp var matches 3 run data modify storage cubi:data args.item.components.'minecraft:custom_model_data'.strings prepend from storage cubi:data args.item.components.'minecraft:custom_model_data'.strings[2]
data remove storage cubi:data args.item.components.'minecraft:custom_model_data'.strings[-1]

execute positioned ~ ~-0.25 ~ run function example:note_paper/place/1 with storage cubi:data args
