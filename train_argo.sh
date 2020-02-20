# Argoverse dataset
CUDA_VISIBLE_DEVICES=0 python train.py --batchSize=4 \
                --crop_height=240 \
                --crop_width=528 \
                --max_disp=192 \
                --thread=4 \
                --data_path='/home/011505052/argoverse-conv-data/KITTI/object/training/' \
                --training_list='./lists/argo_train.list' \
                --val_list='./lists/argo_val.list' \
                --save_path='./checkpoints/finetune_argo' \
                --argo=1 \
                --shift=3 \
                --resume='./checkpoint/sceneflow_epoch_10.pth' \
                --nEpochs=800 2>&1 |tee logs/log_finetune_argo.txt


CUDA_VISIBLE_DEVICES=0 python train.py --batchSize=4 \
                --crop_height=240 \
                --crop_width=1248 \
                --max_disp=192 \
                --thread=4 \
                --data_path='/home/011505052/argoverse-conv-data/KITTI/object/training/' \
                --training_list='./lists/argo_train.list' \
                --val_list='./lists/argo_val.list' \
                --save_path='./checkpoint/finetune2_argo' \
                --argo=1 \
                --shift=3 \
                --lr=0.0001 \
                --resume='./checkpoint/finetune_argo_epoch_800.pth' \
                --nEpochs=8 2>&1 |tee logs/log_finetune_argo.txt

exit