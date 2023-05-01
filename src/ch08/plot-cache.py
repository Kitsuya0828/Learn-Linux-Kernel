#!/usr/bin/python3

import numpy as np
from PIL import Image
import matplotlib
import os


matplotlib.use('Agg')

import matplotlib.pyplot as plt

plt.rcParams['font.family'] = "sans-serif"
plt.rcParams['font.sans-serif'] = "DejaVu Sans"

def plot_cache():
    fig = plt.figure()
    ax = fig.add_subplot(1, 1, 1)
    x, y = np.loadtxt("out.txt", unpack=True)
    ax.scatter(x, y, s=1)
    ax.set_title("Visualisation of the effects of cache memory")
    ax.set_xlabel("buffer size [2^x KiB]")
    ax.set_ylabel("access speed [access / nanosecond]")

    pngfilename = "cache.png"
    jpgfilename = "cache.jpg"
    fig.savefig(pngfilename)
    Image.open(pngfilename).convert("RGB").save(jpgfilename)
    os.remove(pngfilename)

plot_cache()