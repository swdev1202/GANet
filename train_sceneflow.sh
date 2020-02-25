CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 python train.py --batchSize=16 \
                --crop_height=240 \
                --crop_width=528 \
                --max_disp=192 \
                --thread=16 \
                --data_path='/home/011505052/sceneflow/' \
                --training_list='lists/sceneflow_train.list' \
                --save_path='./checkpoint/sceneflow' \
                --resume='' \
                --model='GANet11' \
                --nEpochs=11 2>&1 |tee logs/log_train_sceneflow.txt

exit
