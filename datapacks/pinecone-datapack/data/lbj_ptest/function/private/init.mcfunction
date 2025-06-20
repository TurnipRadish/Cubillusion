#init lbj_ptest furniture data
data modify storage pinecone:fur_data "lbj_ptest:keyboard" set value {\
transfer:{},\
placement:{align_block:1b,offset:[0.5,0.0,0.0],barrier:[[0.5,0.0,0.0],[-0.5,0.0,0.0]],bounding_box:[2.1,1.0]},\
item_data:{id:"minecraft:leather_horse_armor",count:1,components:{item_model:"lbj_ptest:keyboard",item_name:"电子琴",consumable:{animation:"none",consume_seconds:1000000,has_consume_particles:0b}}},\
interaction:{is_seat:1b,seat_height:1},\
auto:{}}

data modify storage pinecone:fur_data "lbj_ptest:speaker" set value {\
transfer:{},\
placement:{arb_rotation:1b,bounding_box:[0.8,0.6]},\
item_data:{id:"apple",count:1,components:{item_model:"lbj_ptest:speaker",item_name:"音箱",food:{can_always_eat:1b,nutrition:2,saturation:2.4},consumable:{}}},\
interaction:{is_shake:1b},\
auto:{rotate_vleft:1b}}

data modify storage pinecone:fur_data "lbj_ptest:garden_lantern_on" set value {\
transfer:{target:"lbj_ptest:garden_lantern"},\
placement:{align_block:1b,light:[{pos:[0,0,0],level:15}],bounding_box:[1.01,1.01]},\
item_data:{id:"minecraft:leather_horse_armor",count:1,components:{item_model:"lbj_ptest:garden_lantern_on",item_name:"花园提灯",consumable:{animation:"none",consume_seconds:1000000,has_consume_particles:0b}}},\
interaction:{},\
auto:{}}

data modify storage pinecone:fur_data "lbj_ptest:garden_lantern" set value {\
transfer:{target:"lbj_ptest:garden_lantern_on"},\
placement:{align_block:1b,air:[[0,0,0]],bounding_box:[1.01,1.01]},\
item_data:{id:"minecraft:leather_horse_armor",count:1,components:{item_model:"lbj_ptest:garden_lantern",item_name:"花园提灯",consumable:{animation:"none",consume_seconds:1000000,has_consume_particles:0b}}},\
interaction:{},\
auto:{}}

data modify storage pinecone:fur_data "lbj_ptest:test" set value {\
transfer:{},\
placement:{bounding_box:[1.01,1.01]},\
item_data:{id:"stick",count:1,components:{item_model:"lbj_ptest:test",item_name:"测试家具",consumable:{animation:"none",consume_seconds:1000000,has_consume_particles:0b}}},\
interaction:{is_seat:1b},\
auto:{}}
