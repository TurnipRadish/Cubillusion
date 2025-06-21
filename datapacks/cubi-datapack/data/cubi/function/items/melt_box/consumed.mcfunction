advancement revoke @s only cubi:item/triticin/consumed

tellraw @s {translate:"item.cubi.triticin.consumed", with:[{selector:'@s'}]}

item modify entity @s weapon.mainhand {function:"set_damage", damage:-0.1, add:true}
