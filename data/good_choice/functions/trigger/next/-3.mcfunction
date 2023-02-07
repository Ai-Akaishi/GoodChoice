#> good_choice:trigger/next/-3
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 後ろ４つを削る
data remove storage good_choice:trigger _[-4][-4][7]
data remove storage good_choice:trigger _[-4][-4][6]
data remove storage good_choice:trigger _[-4][-4][5]
data remove storage good_choice:trigger _[-4][-4][4]

### とりあえず１つ増やせることが多いから１つ増やしてみる
data modify storage good_choice:trigger _[-4] append value []
### もしも８番目の要素があれば、更に手前をチェック
execute if data storage good_choice:trigger _[-4][7] run function good_choice:trigger/next/-4
