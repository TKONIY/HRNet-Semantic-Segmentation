TRAIN_IMAGES_DIR=$HRNET/data/lip/TrainVal_images/train_images
TRAIN_SEGMENTATION_DIR=$HRNET/data/lip/TrainVal_parsing_annotations/train_segmentations
VAL_IMAGES_DIR=$HRNET/data/lip/TrainVal_images/val_images
VAL_SEGMENTATION_DIR=$HRNET/data/lip/TrainVal_parsing_annotations/val_segmentations
cp -v $VAL_IMAGES_DIR/* $TRAIN_IMAGES_DIR
cp -v $VAL_SEGMENTATION_DIR/* $TRAIN_SEGMENTATION_DIR