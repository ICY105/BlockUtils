
scoreboard players set #temp redstone_utils.data 0

#self powered
function redstone_utils:v1.0/redstone/is_powered
execute if score #out redstone_utils.data matches 1 run scoreboard players set #temp redstone_utils.data 1
execute if score #out redstone_utils.data matches 1 run say self powered

#other powered
execute if score #temp redstone_utils.data matches 0 positioned ~ ~1 ~ unless block ~ ~ ~ #redstone_utils:v1.0/transparent run function redstone_utils:v1.0/redstone/is_powered
execute if score #temp redstone_utils.data matches 0 if score #out redstone_utils.data matches 1 run scoreboard players set #temp redstone_utils.data 1
execute if score #temp redstone_utils.data matches 0 if score #out redstone_utils.data matches 1 run say up

execute if score #temp redstone_utils.data matches 0 positioned ~ ~-1 ~ unless block ~ ~ ~ #redstone_utils:v1.0/transparent run function redstone_utils:v1.0/redstone/is_powered
execute if score #temp redstone_utils.data matches 0 if score #out redstone_utils.data matches 1 run scoreboard players set #temp redstone_utils.data 1
execute if score #temp redstone_utils.data matches 0 if score #out redstone_utils.data matches 1 run say down

execute if score #temp redstone_utils.data matches 0 positioned ~1 ~ ~ unless block ~ ~ ~ #redstone_utils:v1.0/transparent run function redstone_utils:v1.0/redstone/is_powered
execute if score #temp redstone_utils.data matches 0 if score #out redstone_utils.data matches 1 run scoreboard players set #temp redstone_utils.data 1
execute if score #temp redstone_utils.data matches 0 if score #out redstone_utils.data matches 1 run say +x

execute if score #temp redstone_utils.data matches 0 positioned ~-1 ~ ~ unless block ~ ~ ~ #redstone_utils:v1.0/transparent run function redstone_utils:v1.0/redstone/is_powered
execute if score #temp redstone_utils.data matches 0 if score #out redstone_utils.data matches 1 run scoreboard players set #temp redstone_utils.data 1
execute if score #temp redstone_utils.data matches 0 if score #out redstone_utils.data matches 1 run say -x

execute if score #temp redstone_utils.data matches 0 positioned ~ ~ ~1 unless block ~ ~ ~ #redstone_utils:v1.0/transparent run function redstone_utils:v1.0/redstone/is_powered
execute if score #temp redstone_utils.data matches 0 if score #out redstone_utils.data matches 1 run scoreboard players set #temp redstone_utils.data 1
execute if score #temp redstone_utils.data matches 0 if score #out redstone_utils.data matches 1 run say +y

execute if score #temp redstone_utils.data matches 0 positioned ~ ~ ~-1 unless block ~ ~ ~ #redstone_utils:v1.0/transparent run function redstone_utils:v1.0/redstone/is_powered
execute if score #temp redstone_utils.data matches 0 if score #out redstone_utils.data matches 1 run scoreboard players set #temp redstone_utils.data 1
execute if score #temp redstone_utils.data matches 0 if score #out redstone_utils.data matches 1 run say -y

### Self Active

#dynamic
execute if score #temp redstone_utils.data matches 0 positioned ~ ~01 ~ if block ~ ~ ~ #redstone_utils:v1.0/weak_power_top if predicate redstone_utils:v1.0/is_emitting_signal unless block ~ ~ ~ minecraft:redstone_torch run scoreboard players set #temp redstone_utils.data 1
execute if score #temp redstone_utils.data matches 0 positioned ~ ~-1 ~ if block ~ ~ ~ #redstone_utils:v1.0/weak_power_bottom if predicate redstone_utils:v1.0/is_emitting_signal run scoreboard players set #temp redstone_utils.data 1
execute if score #temp redstone_utils.data matches 0 positioned ~01 ~ ~ if block ~ ~ ~ #redstone_utils:v1.0/weak_power_side if predicate redstone_utils:v1.0/is_emitting_signal run scoreboard players set #temp redstone_utils.data 1
execute if score #temp redstone_utils.data matches 0 positioned ~-1 ~ ~ if block ~ ~ ~ #redstone_utils:v1.0/weak_power_side if predicate redstone_utils:v1.0/is_emitting_signal run scoreboard players set #temp redstone_utils.data 1
execute if score #temp redstone_utils.data matches 0 positioned ~ ~ ~01 if block ~ ~ ~ #redstone_utils:v1.0/weak_power_side if predicate redstone_utils:v1.0/is_emitting_signal run scoreboard players set #temp redstone_utils.data 1
execute if score #temp redstone_utils.data matches 0 positioned ~ ~ ~-1 if block ~ ~ ~ #redstone_utils:v1.0/weak_power_side if predicate redstone_utils:v1.0/is_emitting_signal run scoreboard players set #temp redstone_utils.data 1

#redstone torch
execute if block ~ ~1 ~ minecraft:redstone_wall_torch[lit=true] run scoreboard players set #temp redstone_utils.data 1
execute if block ~1 ~ ~ #redstone_utils:v1.0/redstone_torch[lit=true] run scoreboard players set #temp redstone_utils.data 1
execute if block ~-1 ~ ~ #redstone_utils:v1.0/redstone_torch[lit=true] run scoreboard players set #temp redstone_utils.data 1
execute if block ~ ~ ~1 #redstone_utils:v1.0/redstone_torch[lit=true] run scoreboard players set #temp redstone_utils.data 1
execute if block ~ ~ ~-1 #redstone_utils:v1.0/redstone_torch[lit=true] run scoreboard players set #temp redstone_utils.data 1

scoreboard players operation #out redstone_utils.data = #temp redstone_utils.data
