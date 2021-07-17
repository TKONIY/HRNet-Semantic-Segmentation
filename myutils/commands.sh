python tools/test.py --cfg experiments/lip/seg.yaml TEST.MODEL_FILE output/lip/seg/best.pth

# 训练方式
nohup python -m torch.distributed.launch --nproc_per_node=2 tools/train.py --cfg experiments/lip/seg.yaml > log/20210717.log 2>&1 &