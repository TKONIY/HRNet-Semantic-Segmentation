ls $HRNET/data/fossil/imgs  \
    | awk '{printf("imgs/%s masks/%s\n", $1, $1);}' \
    > $HRNET/data/list/fossil/train.lst