
TDCF_OPT = {  # TemporalDecoderCodeFormer
    "dim_embed": 512,
    "n_head": 8,
    "n_layers": 9,
    "codebook_size": 1024,
    "connect_list": ['32', '64', '128', '256'],
    "fix_modules": [], # 解开了codeformer原有的generator
    # vqgan_path: './weights/CodeFormer/vqgan_code1024.pth' # pretrained VQGAN 
    "frame_length": 10,
}

TCFDD_OPT = {  # TemporalDecoderCodeFormer
    "dim_embed": 512,
    "n_head": 8,
    "n_layers": 9,
    "codebook_size": 1024,
    "connect_list": ['32', '64', '128', '256'],
    "fix_modules": [], # 解开了codeformer原有的generator
    # vqgan_path: './weights/CodeFormer/vqgan_code1024.pth' # pretrained VQGAN 
    "frame_length": 10,
}
