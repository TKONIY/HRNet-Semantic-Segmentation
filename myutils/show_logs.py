from sre_constants import RANGE
import sys
import re
import os
import matplotlib.pyplot as plt
flog = sys.argv[1]

aLoss = []
aMeanIU = []
aBestMIoU = []

with open(flog) as f:
    while True:
        line = f.readline()
        if not line:
            break
        values = re.findall(
            "^Loss: (.*), MeanIU:  (.*), Best_mIoU:  (.*)", line)
        if values:
            loss, meanIU, bestMIoU = values[0]
            aLoss.append(float(loss))
            aMeanIU.append(float(meanIU))
            aBestMIoU.append(float(bestMIoU))

plt.figure(figsize=(10, 10))
plt.subplot(3, 1, 1)
plt.title("loss")
plt.plot(range(len(aLoss)), aLoss)
plt.subplot(3, 1, 2)
plt.title("meanIU")
plt.plot(range(len(aMeanIU)), aMeanIU)

plt.subplot(3, 1, 3)
plt.title("bestMIoU")
plt.plot(range(len(aBestMIoU)), aBestMIoU)

plt.savefig(os.getenv("HRNET") + "/figs/" + os.path.basename(flog) + ".png")
