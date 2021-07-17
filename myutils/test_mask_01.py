###################################################
# 废弃
##################################################3

import os
import sys
import numpy as np
from PIL import Image
import matplotlib.pyplot as plt

# segName = "05B-3-1398.png"

# imgDir = os.getenv("HRNET") + "/data/lip/TrainVal_images/test_images"
# segDir = os.getenv("HRNET") + \
#     "/data/lip/TrainVal_parsing_annotations/test_segmentations-05B"
# predDir = os.getenv("HRNET") + "/test_results"

# figsDir = os.getenv("HRNET") + "/figs/predict"

segName = "08A-2-1274.png"

imgDir = os.getenv("HRNET") + "/data/lip/TrainVal_images/val_images"
segDir = os.getenv("HRNET") + \
    "/data/lip/TrainVal_parsing_annotations/val_segmentations"
predDir = os.getenv("HRNET") + "/test_results"

figsDir = os.getenv("HRNET") + "/figs/validation"


seg = Image.open(segDir + "/" + segName)
arr = np.asarray(seg)
print("shape: ", arr.shape)
print(arr.shape[0] * arr.shape[1], " pixels")
print("value = 0: ", np.sum(arr == 0))
print("value = 1: ", np.sum(arr == 1))
print("value = 0 or 1: ", np.sum(arr == 0) + np.sum(arr == 1))

plt.figure(figsize=(200,200))
plt.imshow(seg)
plt.savefig(os.getenv("HRNET") + "/figs/testMask.png")