#> good_choice:show/
### Copyright © 2022 赤石愛

scoreboard objectives add GoodChoice trigger
scoreboard players enable @s GoodChoice
scoreboard players set @s GoodChoice -1

### 次のトリガーの番号を取得
function #oh_my_dat:please
### 一度もお喋りしてなかったら初期化
execute unless data storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].GoodChoice.TriggerRange run data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].GoodChoice.TriggerRange set value [0,0]

### 次のトリガー番号を取得
execute store result score _ GoodChoice store result score TriggerNumber GoodChoice run data get storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].GoodChoice.TriggerRange[1]
### 一つ手前のトリガーを取得できる状態にしておく
scoreboard players remove _ GoodChoice 1
execute if score _ GoodChoice matches ..-1 run scoreboard players add _ GoodChoice 1024
function good_choice:trigger/get

### ボタンが何かを覚えておく
data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].GoodChoice.buttons set from storage good_choice: buttons
### ボタンを生成する
data modify storage good_choice: buttons_copy set from storage good_choice: buttons
execute if data storage good_choice: buttons_copy[0] run function good_choice:show/button
execute positioned ~ 500 ~ run tellraw @s {"nbt":"Item.tag.display.Name","entity":"@e[distance=0,type=item]","interpret":true,"separator":"  "}
execute positioned ~ 500 ~ run kill @e[distance=0,type=item]

### 番号が1024以上だったら補正(-1024)する
execute if score TriggerNumber GoodChoice matches 1024.. run scoreboard players remove TriggerNumber GoodChoice 1024
### 前のトリガーの番号を消去
data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].GoodChoice.TriggerRange[0] set from storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].GoodChoice.TriggerRange[1]
### 次のトリガーの番号を記録
execute store result storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].GoodChoice.TriggerRange[1] int 1 run scoreboard players get TriggerNumber GoodChoice

advancement grant @s only good_choice:is_talking
