#> good_choice:cancel
# 会話イベントをキャンセルする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 
function #oh_my_dat:please
## ボタンを無効にする
data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].GoodChoice.TriggerRange[0] set from storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].GoodChoice.TriggerRange[1]
## お話状態を解除
advancement revoke @s only good_choice:is_talking
