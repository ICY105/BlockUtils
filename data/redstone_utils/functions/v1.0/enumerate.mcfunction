
scoreboard players add #redstone_utils.major load.status 0
scoreboard players add #redstone_utils.minor load.status 0

execute if score #redstone_utils.major load.status matches ..0 run scoreboard players set #redstone_utils.minor load.status 0
execute if score #redstone_utils.major load.status matches ..0 run scoreboard players set #redstone_utils.major load.status 1
execute if score #redstone_utils.major load.status matches 1 if score #redstone_utils.minor load.status matches ..0 run scoreboard players set #redstone_utils.minor load.status 0
