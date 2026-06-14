execute if score @s fauxban_health matches 1.. if score @s fauxban_respawn_pending matches 1 run function fauxban:respawn
execute if score @s fauxban_health matches 1.. unless score @s fauxban_respawn_pending matches 1 run function fauxban:scoreboard/record_location_data
execute if score @s fauxban_health matches 0 unless score @s fauxban_respawn_pending matches 1 run function fauxban:record_death