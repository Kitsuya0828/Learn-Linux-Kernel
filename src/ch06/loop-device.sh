#!/bin/bash

fallocate -l 1G loopdevice.img
sudo losetup -f loopdevice.img
losetup -l

