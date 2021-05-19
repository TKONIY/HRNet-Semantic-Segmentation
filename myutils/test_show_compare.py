from mmap import MAP_EXECUTABLE
from PIL import Image
import matplotlib.pyplot as plt
import os
import sys

imgDir = os.getenv("HRNET") + "/data/lip/TrainVal_images/test_images"
segDir = os.getenv("HRNET") + "/data/lip/TrainVal_parsing_annotations/test_segmentations"
predDir = os.getenv("HRNET") + "/test_results"

figsDir = os.getenv("HRNET") + "/figs/predict"

# segDir的要转换一下
basename = os.path.basename(sys.argv[1])

plt.figure(figsize=(10, 10))

plt.subplot(1, 3, 1)
plt.title("img")
img = Image.open(imgDir + "/" + basename)
plt.imshow(img)

plt.subplot(1, 3, 2)
plt.title("label")
img = Image.open(segDir + "/" + basename)
plt.imshow(img)

plt.subplot(1, 3, 3)
plt.title("predict")
img = Image.open(predDir + "/" + basename)
plt.imshow(img)

plt.savefig(figsDir + "/pred-" + basename)