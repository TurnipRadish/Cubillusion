execute unless data storage dc:index temp.events.left_click.fallback run data modify storage dc:index temp.events.left_click.fallback set value {event:"destruct"}
execute unless data storage dc:index temp.events.right_click.fallback run data modify storage dc:index temp.events.right_click.fallback set value {event:"__nothing__"}

function dc:index/_install/check/fallback
execute if data storage dc:index temp.events.left_click.criteria run function dc:index/_install/check/lc
execute if data storage dc:index temp.events.right_click.criteria run function dc:index/_install/check/rc
execute if data storage dc:index temp.events.construct run function dc:index/_install/check/construct