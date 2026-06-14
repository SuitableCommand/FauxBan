tellraw @a [{"selector":"@s","color":"yellow"},{"text":" left the game"}]

execute if data storage minecraft:fauxban_config {mute:0} run playsound minecraft:custom.death_sound_01 master @a ~ ~ ~ 1 1 1

scoreboard players set @s fauxban_respawn_pending 1