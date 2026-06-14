tellraw @a [{"selector":"@s","color":"yellow"},{"text":" left the game"}]

gamemode spectator @s

summon minecraft:marker ~ ~ ~ {Tags:["fauxban_death_point"]}

execute store result entity @e[tag=fauxban_death_point,limit=1,sort=nearest] Pos[0] double 0.001 run scoreboard players get @s fauxban_pos_x
execute store result entity @e[tag=fauxban_death_point,limit=1,sort=nearest] Pos[1] double 0.001 run scoreboard players get @s fauxban_pos_y
execute store result entity @e[tag=fauxban_death_point,limit=1,sort=nearest] Pos[2] double 0.001 run scoreboard players get @s fauxban_pos_z

execute store result entity @e[tag=fauxban_death_point,limit=1,sort=nearest] Rotation[0] double 0.001 run scoreboard players get @s fauxban_rot_y
execute store result entity @e[tag=fauxban_death_point,limit=1,sort=nearest] Rotation[1] double 0.001 run scoreboard players get @s fauxban_rot_z

execute rotated as @e[tag=fauxban_death_point,limit=1,sort=nearest] run tp @s @e[tag=fauxban_death_point,limit=1,sort=nearest]

kill @e[tag=fauxban_death_point,limit=1,sort=nearest]

scoreboard players set @s fauxban_deaths 0

advancement revoke @s only fauxban:death_detected

#playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 1 1
playsound minecraft:custom.death_sound_01 master @a ~ ~ ~ 1 1 1