#!/usr/bin/python3

import numpy as np

sample_rate = 44000  # sample rate
f = 440  # signal frequency
n = 100  # number of samples
depth = 12  # bit-depth of DAC

t = np.arange(0, n) / sample_rate
f = np.sin(2 * np.pi * f * t)

f += 1               # signal range 0-2 instead of -1 to 1
f /= 2               # peak-to-peak amplitude 1
f *= (2**depth - 1)  # scale up signal to DAC range

# Generate a C-syntax array initialiser
print("int buf[{}] = {{".format(len(f)), end='')
print(", ".join(str(int(x)) for x in f), end='')
print("};")
