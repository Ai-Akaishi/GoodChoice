#> good_choice:trigger/next/
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### とりあえず１つ増やせることが多いから１つ増やしてみる
data modify storage good_choice:trigger _[-4][-4][-4][-4] append value ''
### もしも一番奥底に８番目の要素があれば、更に手前をチェック
execute if data storage good_choice:trigger _[-4][-4][-4][-4][7] run function good_choice:trigger/next/-1
