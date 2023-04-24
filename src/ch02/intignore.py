#!/usr/bin/python3

import signal
# SIGINTシグナルを無視するように設定
# 第1引数にはハンドラを設定するシグナルの番号を
# 第2引数にはシグナルハンドラを指定する

signal.signal(signal.SIGINT, signal.SIG_IGN)
while True:
    pass
