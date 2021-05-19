TRAIN_IMAGES_DIR=$HRNET/data/lip/TrainVal_images/train_images
TRAIN_SEGMENTATION_DIR=$HRNET/data/lip/TrainVal_parsing_annotations/train_segmentations
VAL_IMAGES_DIR=$HRNET/data/lip/TrainVal_images/val_images
VAL_SEGMENTATION_DIR=$HRNET/data/lip/TrainVal_parsing_annotations/val_segmentations

mkdir -p $VAL_IMAGES_DIR
mkdir -p $VAL_SEGMENTATION_DIR

N=`ls $TRAIN_IMAGES_DIR| wc -l`
VAL_SIZE=`expr $N / 5`
echo $VAL_SIZE
LIST=`ls $TRAIN_IMAGES_DIR | shuf | head -n $VAL_SIZE`

echo $LIST
for i in $LIST
do 
mv $TRAIN_IMAGES_DIR/$i $VAL_IMAGES_DIR -v
mv $TRAIN_SEGMENTATION_DIR/$i $VAL_SEGMENTATION_DIR -v
done