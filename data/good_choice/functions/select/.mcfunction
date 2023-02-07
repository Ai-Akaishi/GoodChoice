#> good_choice:select/
# 選択肢を選んだ時
### Copyright © 2022 赤石愛

function #oh_my_dat:please
execute store result score Left GoodChoice run data get storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].GoodChoice.TriggerRange[0]
execute store result score Right GoodChoice run data get storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].GoodChoice.TriggerRange[1]

## もしも左の数字が右の数字よりも大きいとき
## 選択したボタンの数字が右の数字より小さかったら +1024 してあげる
execute if score Left GoodChoice > Right GoodChoice if score @s GoodChoice < Right GoodChoice run scoreboard players add @s GoodChoice 1024
## 右の数字も +1024 扱いにする
execute if score Left GoodChoice > Right GoodChoice run scoreboard players add Right GoodChoice 1024

## 古いボタンだったらメッセージを出してあげる
execute if score @s GoodChoice < Left GoodChoice run title @s actionbar {"translate":"その選択肢は締め切られています。","color":"#FF6666","bold":true}
execute if score @s GoodChoice >= Right GoodChoice run title @s actionbar {"translate":"その選択肢は締め切られています。","color":"#FF6666","bold":true}

## 有効なボタンを押していたら、ボタンを無効にする
execute if score @s GoodChoice >= Left GoodChoice if score @s GoodChoice < Right GoodChoice run function good_choice:select/valid/

## ボタンを再び押せるようにする
scoreboard players set @s GoodChoice -1
scoreboard players enable @s GoodChoice

## ボタン押した検知を再度有効化する
advancement revoke @s only good_choice:select
