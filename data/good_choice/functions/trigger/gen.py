#!/usr/bin/env python
# -*- coding: utf-8 -*-

### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.
import codecs
import math
import os

with codecs.open(os.path.join(os.path.dirname(__file__), 'init.mcfunction'), 'w', 'utf_8') as f:
    texts = '''### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

#> ncphat:trigger/init
# トリガー取得ストレージを初期化します。

data modify storage good_choice:trigger two_empty_lists set value [[],[]]
data modify storage good_choice:trigger three_empty_lists set value [[],[],[]]
data modify storage good_choice:trigger two_empty_strings set value ['','']
data modify storage good_choice:trigger three_empty_strings set value ['','','']
'''
    texts = texts + 'data modify storage good_choice:trigger _ set value '
    texts = texts + '['
    for i in range(4):
        texts = texts + '['
        for j in range(4):
            texts = texts + '['
            for k in range(4):
                texts = texts + '['
                for l in range(4):
                    texts = texts + '['
                    for m in range(4):
                        a = (((i * 4 + j) * 4 + k) * 4 + l) * 4 + m
                        texts = texts + '\'{"text":"","clickEvent":{"action":"run_command","value":"/trigger GoodChoice set ' + str(a) + '"}}\''
                        texts = texts + (',' if m < 3 else '')
                    texts = texts + ']' + (',' if l < 3 else '')
                texts = texts + ']' + (',' if k < 3 else '')
            texts = texts + ']' + (',' if j < 3 else '')
        texts = texts + ']' + (',' if i < 3 else '')
    texts = texts + ']'
    f.write(texts)
