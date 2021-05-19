# import_testset.sh ~/Pytorch-UNet/data-16B/

data_dir=$1
data_index=`expr "$data_dir" : '.*data-\(.*\)/'`
[ ! $data_index ] && {
    echo data index not found
    exit -1
}
echo $data_index
cd $data_dir

mkdir -p $HRNET/data/lip/TrainVal_images/test_images
mkdir -p $HRNET/data/lip/TrainVal_parsing_annotations/test_segmentations
for i in `ls imgs`
do
    cp -v imgs/$i $HRNET/data/lip/TrainVal_images/test_images/$data_index-1-$i
done

for i in `ls imgs_dim2`
do
    cp -v imgs_dim2/$i $HRNET/data/lip/TrainVal_images/test_images/$data_index-2-$i
done

for i in `ls imgs_dim3`
do
    cp -v imgs_dim3/$i $HRNET/data/lip/TrainVal_images/test_images/$data_index-3-$i
done

for i in `ls masks`
do
    cp -v masks/$i $HRNET/data/lip/TrainVal_parsing_annotations/test_segmentations/$data_index-1-$i
done

for i in `ls masks_dim2`
do
    cp -v masks_dim2/$i $HRNET/data/lip/TrainVal_parsing_annotations/test_segmentations/$data_index-2-$i
done

for i in `ls masks_dim3`
do
    cp -v masks_dim3/$i $HRNET/data/lip/TrainVal_parsing_annotations/test_segmentations/$data_index-3-$i
done