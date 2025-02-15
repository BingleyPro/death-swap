# Display title
function swap:title

# Start button
tellraw @a[tag=op] {"clickEvent":{"action":"run_command","value":"/function swap:start"},"color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Click to begin!","color":"green"}]},"text":"[Start]"}

tellraw @a[tag=!op] {"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"You don't have permission to start the game!","color":"red"}]},"text":"[Start]"}

tellraw @a ""

# Worldborder size
tellraw @a[tag=op] [{"color":"gold","text":"Worldborder Size: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function swap:settings/wb-size/adjust_wb_size {input_change:1}"},"color":"red","text":"< "},{"hoverEvent":{"action":"show_text","value":[{"text":"Click to set exact value","color":"green"}]},"clickEvent":{"action":"run_command","value":"/function swap:settings/wb-size/direct_set_wb_size"},"nbt":"wb-size","storage":"swap:settings"},{"bold":true,"clickEvent":{"action":"run_command","value":"/function swap:settings/wb-size/adjust_wb_size {input_change:2}"},"color":"green","text":" >"}]

tellraw @a[tag=!op] [{"color":"gray","text":"Worldborder Size: "},{"bold":true,"color":"gray","text":"< "},{"nbt":"wb-size","storage":"swap:settings"},{"bold":true,"color":"gray","text":" >"}]