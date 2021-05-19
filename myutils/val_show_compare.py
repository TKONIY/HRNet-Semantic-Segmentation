from mmap import MAP_EXECUTABLE
from PIL import Image
import matplotlib.pyplot as plt
import os
import sys

imgDir = os.getenv("HRNET") + "/data/lip/TrainVal_images/val_images"
segDir = os.getenv("HRNET") + "/data/lip/TrainVal_parsing_annotations/val_segmentations"
predDir = os.getenv("HRNET") + "/test_results-validation"

figsDir = os.getenv("HRNET") + "/figs/validation"

# segDir的要转换一下
basename = os.path.basename(sys.argv[1])

plt.figure(figsize=(10, 10))

plt.subplot(1, 3, 1)
plt.title("img")
img = Image.open(imgDir + "/" + basename)
plt.imshow(img, interpolation="nearest")

plt.subplot(1, 3, 2)
plt.title("label")
img = Image.open(segDir + "/" + basename)
plt.imshow(img, interpolation="nearest")

plt.subplot(1, 3, 3)
plt.title("predict")
img = Image.open(predDir + "/" + basename)
plt.imshow(img, interpolation="nearest")

plt.savefig(figsDir + "/pred-" + basename)