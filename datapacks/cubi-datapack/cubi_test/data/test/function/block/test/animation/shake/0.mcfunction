execute as @n[distance=..1,tag=cubi.wooden_seat,type=item_display] run function cubi:entity/display/hide_model

execute at @n[distance=..1,tag=cubi.wooden_seat,type=item_display] run rotate @s ~ ~

say 1
# function animated_java:cubi/summon {args:{animation:'shake'}}

# execute as @n[distance=..1,tag=aj.cubi.root,type=item_display] run function animated_java:cubi/animations/shake/play
