#!/usr/bin/python3

import subprocess

# 適当な量のデータを作成してメモリを獲得
size = 10**7

print("メモリ獲得前のシステム全体のメモリ使用量を表示します。")
subprocess.run("free")

array = [0]*size

print("メモリ獲得後のシステム全体のメモリ空き容量を表示します。")
subprocess.run("free")

