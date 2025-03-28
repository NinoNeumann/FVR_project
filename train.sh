# CUDA_VISIBLE_DEVICES=0,1,2 torchrun \
#     --nproc_per_node=2 --master_port=29428 \
#     basicsr/train.py \
#     -opt options/baseline/clip3_bs4_512_align_nofix.yaml \
#     --launcher pytorch

# CUDA_VISIBLE_DEVICES=3,4,5,6 torchrun \
#     --nproc_per_node=2 --master_port=29530 \
#     basicsr/train.py \
#     -opt options/baseline/clip5_bs2_512_align_nofix.yaml \
#     --launcher pytorch

# CUDA_VISIBLE_DEVICES=0,3 torchrun \
#     --nproc_per_node=2 --master_port=29531 \
#     basicsr/train.py \
#     -opt options/baseline/clip5_bs2_512_align_nofix_inpaint.yaml \
#     --launcher pytorch

# CUDA_VISIBLE_DEVICES=0,1,2,5 torchrun \
#     --nproc_per_node=4 --master_port=29531 \
#     basicsr/train.py \
#     -opt options/baseline/clip5_bs2_512_align_nofix_multiscale.yaml \
#     --launcher pytorch

# CUDA_VISIBLE_DEVICES=0,3 torchrun \
#     --nproc_per_node=2 --master_port=29536 \
#     basicsr/train.py \
#     -opt options/baseline/clip5_bs2_512_align_nofix_notemporal.yaml \
#     --launcher pytorch

# CUDA_VISIBLE_DEVICES=1,2 torchrun \
#     --nproc_per_node=2 --master_port=29423 \
#     basicsr/train.py \
#     -opt options/baseline/clip5_bs2_512_align_4096.yaml \
#     --launcher pytorch

# CUDA_VISIBLE_DEVICES=0,1 torchrun \
#     --nproc_per_node=2 --master_port=29537 \
#     basicsr/train.py \
#     -opt options/baseline/clip5_bs2_512_align_nofix_multiscale_color.yaml \
#     --launcher pytorch

# CUDA_VISIBLE_DEVICES=2,5 torchrun \
#     --nproc_per_node=2 --master_port=29538 \
#     basicsr/train.py \
#     -opt options/baseline/clip5_bs2_512_align_nofix_multiscale_inpaint.yaml \
#     --launcher pytorch

# CUDA_VISIBLE_DEVICES=1,2,6 torchrun \
#     --nproc_per_node=3 --master_port=29560 \
#     basicsr/train.py \
#     -opt options/demo/clip5_bs2_512_align_nofix_multiscale_bfr_demo.yaml \
#     --launcher pytorch

# CUDA_VISIBLE_DEVICES=0,1,2 torchrun \
#     --nproc_per_node=3 --master_port=29538 \
#     basicsr/train.py \
#     -opt options/demo/clip5_bs2_512_align_nofix_multiscale_inpaint_demo.yaml \
#     --launcher pytorch

# CUDA_VISIBLE_DEVICES=0,1,2 torchrun \
#     --nproc_per_node=3 --master_port=29591 \
#     basicsr/train.py \
#     -opt options/demo/clip5_bs2_512_align_nofix_multiscale_color_demo.yaml \
#     --launcher pytorch

CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6 torchrun \
    --nproc_per_node=7 --master_port=29597 \
    basicsr/train.py \
    -opt options/baseline/clip5_bs2_512_best_test.yaml \
    --launcher pytorch


# CUDA_VISIBLE_DEVICES=5,6 torchrun \
#     --nproc_per_node=2 --master_port=29570 \
#     basicsr/train.py \
#     -opt options/abalations/codebook/clip5_bs2_512_align_nofix_multiscale_bfr_codebook512.yaml \
#     --launcher pytorch