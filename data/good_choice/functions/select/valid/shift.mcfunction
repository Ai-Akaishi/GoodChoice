#> good_choice:select/valid/shift
# 有効なボタンを押したとき
### Copyright © 2022 赤石愛

data remove storage good_choice: buttons[-1]
scoreboard players remove _ GoodChoice 1
execute if score _ GoodChoice matches 2.. run function good_choice:select/valid/shift
