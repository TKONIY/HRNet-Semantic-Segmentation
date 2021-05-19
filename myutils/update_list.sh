ls $HRNET/data/lip/TrainVal_images/train_images  \
    | awk '{printf("lip/TrainVal_images/train_images/%s lip/TrainVal_parsing_annotations/train_segmentations/%s\n", $1, $1);}' \
    > $HRNET/data/list/lip/trainList.txt
ls $HRNET/data/lip/TrainVal_images/val_images  \
    | awk '{printf("lip/TrainVal_images/val_images/%s lip/TrainVal_parsing_annotations/val_segmentations/%s\n", $1, $1);}' \
    > $HRNET/data/list/lip/valList.txt
ls $HRNET/data/lip/TrainVal_images/test_images  \
    | awk '{printf("lip/TrainVal_images/test_images/%s lip/TrainVal_parsing_annotations/test_segmentations/%s\n", $1, $1);}' \
    > $HRNET/data/list/lip/testvalList.txt