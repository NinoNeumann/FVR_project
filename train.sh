CUDA_VISIBLE_DEVICES=0,1 torchrun \
    --nproc_per_node=2 --master_port=29597 \
    basicsr/train.py \
    -opt options/baseline/clip5_bs2_512_best.yaml \
    --launcher pytorch
