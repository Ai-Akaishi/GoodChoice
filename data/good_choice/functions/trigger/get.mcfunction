#> good_choice:trigger/get
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 指定されたトリガーを、特定のオフセットで呼び出せるようにする

#define storage good_choice:trigger

# reset
data remove storage good_choice:trigger _[-4][-4][-4][-4][6]
data remove storage good_choice:trigger _[-4][-4][-4][-4][5]
data remove storage good_choice:trigger _[-4][-4][-4][-4][4]
data remove storage good_choice:trigger _[-4][-4][-4][6]
data remove storage good_choice:trigger _[-4][-4][-4][5]
data remove storage good_choice:trigger _[-4][-4][-4][4]
data remove storage good_choice:trigger _[-4][-4][6]
data remove storage good_choice:trigger _[-4][-4][5]
data remove storage good_choice:trigger _[-4][-4][4]
data remove storage good_choice:trigger _[-4][6]
data remove storage good_choice:trigger _[-4][5]
data remove storage good_choice:trigger _[-4][4]
data remove storage good_choice:trigger _[6]
data remove storage good_choice:trigger _[5]
data remove storage good_choice:trigger _[4]

# ストレージシフト１
scoreboard players set __ GoodChoice 4194304
scoreboard players operation _ GoodChoice *= __ GoodChoice
# 01....
execute if score _ GoodChoice matches 1073741824.. run data modify storage good_choice:trigger _ append value []
# 10....
execute if score _ GoodChoice matches ..-1073741825 run data modify storage good_choice:trigger _ append from storage good_choice:trigger two_empty_lists[]
# 11....
execute if score _ GoodChoice matches -1073741824..-1 run data modify storage good_choice:trigger _ append from storage good_choice:trigger three_empty_lists[]

# ストレージシフト２
scoreboard players operation _ GoodChoice += _ GoodChoice
scoreboard players operation _ GoodChoice += _ GoodChoice
# 01....
execute if score _ GoodChoice matches 1073741824.. run data modify storage good_choice:trigger _[-4] append value []
# 10....
execute if score _ GoodChoice matches ..-1073741825 run data modify storage good_choice:trigger _[-4] append from storage good_choice:trigger two_empty_lists[]
# 11....
execute if score _ GoodChoice matches -1073741824..-1 run data modify storage good_choice:trigger _[-4] append from storage good_choice:trigger three_empty_lists[]

# ストレージシフト３
scoreboard players operation _ GoodChoice += _ GoodChoice
scoreboard players operation _ GoodChoice += _ GoodChoice
# 01....
execute if score _ GoodChoice matches 1073741824.. run data modify storage good_choice:trigger _[-4][-4] append value []
# 10....
execute if score _ GoodChoice matches ..-1073741825 run data modify storage good_choice:trigger _[-4][-4] append from storage good_choice:trigger two_empty_lists[]
# 11....
execute if score _ GoodChoice matches -1073741824..-1 run data modify storage good_choice:trigger _[-4][-4] append from storage good_choice:trigger three_empty_lists[]

# ストレージシフト４
scoreboard players operation _ GoodChoice += _ GoodChoice
scoreboard players operation _ GoodChoice += _ GoodChoice
# 01....
execute if score _ GoodChoice matches 1073741824.. run data modify storage good_choice:trigger _[-4][-4][-4] append value []
# 10....
execute if score _ GoodChoice matches ..-1073741825 run data modify storage good_choice:trigger _[-4][-4][-4] append from storage good_choice:trigger two_empty_lists[]
# 11....
execute if score _ GoodChoice matches -1073741824..-1 run data modify storage good_choice:trigger _[-4][-4][-4] append from storage good_choice:trigger three_empty_lists[]

# ストレージシフト５
scoreboard players operation _ GoodChoice += _ GoodChoice
scoreboard players operation _ GoodChoice += _ GoodChoice
# 01....
execute if score _ GoodChoice matches 1073741824.. run data modify storage good_choice:trigger _[-4][-4][-4][-4] append value ''
# 10....
execute if score _ GoodChoice matches ..-1073741825 run data modify storage good_choice:trigger _[-4][-4][-4][-4] append from storage good_choice:trigger two_empty_strings[]
# 11....
execute if score _ GoodChoice matches -1073741824..-1 run data modify storage good_choice:trigger _[-4][-4][-4][-4] append from storage good_choice:trigger three_empty_strings[]
