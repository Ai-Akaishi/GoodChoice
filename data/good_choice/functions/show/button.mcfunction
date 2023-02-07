#> good_choice:show/button
### Copyright © 2022 赤石愛

### トリガー取得
function good_choice:trigger/next/
### トリガーの番号を増やす
scoreboard players add TriggerNumber GoodChoice 1

data modify storage good_choice: data set from storage good_choice: buttons_copy[0].data
loot spawn ~ 500 ~ loot good_choice:selector
data remove storage good_choice: buttons_copy[0]

execute if data storage good_choice: buttons_copy[0] run function good_choice:show/button
