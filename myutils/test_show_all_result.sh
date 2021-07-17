# 展示所有test_result里面的对比结果，
count=0
n=`ls $HRNET/test_results | wc -l`
for i in `ls $HRNET/test_results`;
do
    python $HRNET/myutils/test_show_compare.py $HRNET/test_result/$i
    count=`expr $count + 1`
    echo finished[$count/$n] $i
done
