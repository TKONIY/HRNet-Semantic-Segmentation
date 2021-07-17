3000张验证集：
MeanIU:  0.8114, Pixel_Acc:  0.9983,             Mean_Acc:  0.8598, Class IoU: 
[0.99826803 0.62444072]

12680张训练集：
MeanIU:  0.7798, Pixel_Acc:  0.9978,             Mean_Acc:  0.8246, Class IoU: 
[0.99774968 0.56180774]

05B 4000多张
MeanIU:  0.6273, Pixel_Acc:  0.9956,             Mean_Acc:  0.6635, Class IoU: 
[0.99555646 0.25911507]

16B 4000多张
MeanIU:  0.6150, Pixel_Acc:  0.9915,             Mean_Acc:  0.6292, Class IoU: 
[0.99146105 0.23846096]

---
调整，validation set进行了修改。使它成为16/32的倍数
训练集是4+4的batchsize，704的resize。

12864张训练集

3200验证集
MeanIU:  0.8098, Pixel_Acc:  0.9976,             Mean_Acc:  0.9851, Class IoU: 
[0.99754534 0.62200234]
Mins: 9

250 epoch
第232个epoch
--训练log
Loss: 0.006, MeanIU:  0.8309, Best_mIoU:  0.8309
[0.99860958 0.66319571]
--3200张验证集
MeanIU:  0.8151, Pixel_Acc:  0.9977,             Mean_Acc:  0.9848, Class IoU: 
[0.99765505 0.63255174]
Mins: 9