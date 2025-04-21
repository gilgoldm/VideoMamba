# VideoMamba

```bash
git clone https://github.com/facebookresearch/VideoMamba.git
cd VideoMamba

mkdir -p rsu/data/kinetics-dataset/k400/val
mkdir -p rsu/data/action-recognition/kinetics-dataset/k400/annotations
rsync -avzP -e ssh swx-mtvr-arm02:/rsu/data/kinetics-dataset/k400/val /tmp/shaul/rsu/data/kinetics-dataset/k400/
rsync -avzP -e ssh swx-mtvr-arm02:/rsu/data/kinetics-dataset/k400/annotations/val.csv rsu/data/kinetics-dataset/k400/annotations/
```

shaulf@swx-ray08:/tmp/shaul$ tree rsu/
rsu/
└── data
    ├── action-recognition
    │   └── kinetics-dataset
    │       └── k400
    │           └── annotations
    ├── k400
    └── kinetics-dataset
        └── k400
            ├── annotations
            │   ├── gil_2_columns_val.csv
            │   ├── old_not_working_val.csv
            │   └── val.csv
            └── val
                ├── 00cwEcZZcu4_000003_000013.mp4
                ├── 00U9x58IraQ_000007_000017.mp4
                ├── 018EClOtVTM_000035_000045.mp4
                ├── 01BFInmg3Zs_000001_000011.mp4

```shell
wget https://huggingface.co/OpenGVLab/VideoMamba/blob/main/videomamba_t16_k400_f8_res224.pth
wget https://huggingface.co/OpenGVLab/VideoMamba/resolve/main/videomamba_t16_k400_f16_res224.pth
wget https://huggingface.co/OpenGVLab/VideoMamba/resolve/main/videomamba_t16_k400_f8_res224.pth

# put them in:
val_base/videomamba_t16_k400_f16_res224.pth 
val_base/videomamba_t16_k400_f8_res224.pth
```

