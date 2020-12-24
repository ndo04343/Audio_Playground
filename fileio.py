# encoding : cp949
# file IO module

import pandas as pd

x_path, y = [], []
with open('test.list', 'r', encoding='cp949') as f:
    lines = f.readlines()
    for line in lines:
        splited_line = line.split('\t')
        x_path.append(splited_line[0])
        y.append(splited_line[1].rstrip('\n'))

print(x_path[1])
print(y[1])