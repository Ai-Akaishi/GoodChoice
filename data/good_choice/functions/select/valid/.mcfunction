#> good_choice:select/valid/
# 有効なボタンを押したとき
### Copyright © 2022 赤石愛

## 会話をキャンセル状態にする
function good_choice:cancel

## ボタンが右から何番目かを取得する
scoreboard players operation _ GoodChoice = Right GoodChoice
scoreboard players operation _ GoodChoice -= @s GoodChoice
## ボタンに紐づいたファンクションをコピーしておく
data modify storage good_choice: buttons set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].GoodChoice.buttons
## 目的のファンクションを発掘する
execute if score _ GoodChoice matches 2.. run function good_choice:select/valid/shift

data modify storage good_choice: {} merge from storage good_choice: buttons[-1]
data remove storage good_choice: buttons
function #good_choice:actions

data remove storage good_choice: extra
data remove storage good_choice: format
data remove storage good_choice: data
data remove storage good_choice: caption
