#!/bin/sh
export CUDA_VISIBLE_DEVICES=1


python train.py -datapaths ./data/2_ERIC_Data/ -outpath ./trained-models/test_keratella_GPU/ -classifier versusall -class_select keratella_cochlearis -aug -datakind image -ttkind image -save_data yes -resize_images 2 -L 128 -finetune 1 -valid_set yes -training_data True -hp_tuning yes -models_image eff2 -max_trials 10 -executions_per_trial 1  -compute_extrafeat no -avg_ensemble yes -stacking_ensemble yes -finetune_epochs 400 -bayesian_epoch 70 -epochs 200 -balance_weight no -init_name Init_01 -only_ensemble no




# ## 
# # for i in 0 1 2 3;
# # do
# python train.py -datapaths ./data/SMALL_Dataset/ -outpath ./trained-models/test_GPU/ -classifier multi -aug -datakind image -ttkind image -save_data yes -resize_images 2 -L 128 -finetune 1 -valid_set no -training_data False -hp_tuning yes -models_image eff0 eff1 -max_trials 1 -executions_per_trial 1  -compute_extrafeat yes -avg_ensemble yes -stacking_ensemble yes -finetune_epochs 10 -bayesian_epoch 10 -epochs 10 -balance_weight no -init_name Init_01
# # done


# for i in 0 1 2 3;
# do
# python train.py -datapaths ./data/SMALL_Dataset/ -outpath ./trained-models/test_GPU/ -classifier multi -aug -datakind image -ttkind image -save_data yes -resize_images 2 -L 128 -finetune 1 -valid_set no -training_data False -hp_tuning yes -models_image eff0 eff1 eff2 eff3 eff4 eff5 eff6 eff7 incepv3 res50 dense121 mobile -max_trials 1 -executions_per_trial 1  -compute_extrafeat yes -avg_ensemble yes -stacking_ensemble yes -finetune_epochs 10 -bayesian_epoch 10 -epochs 10 -balance_weight no -init_name Init_${i}
# done

## 


# for i in 0 1;
# do
# python train_from_saved.py -datapaths ./data/SMALL_Dataset/ -outpath ./trained-models/test_GPU/ -classifier multi -aug -datakind image -ttkind image -saved_data yes -resize_images 2 -L 128 -finetune 1 -valid_set no -training_data False -hp_tuning yes -models_image eff0 eff1 eff2 eff3 eff4 eff5 eff6 eff7 incepv3 res50 dense121 mobile -max_trials 1 -executions_per_trial 1  -compute_extrafeat yes -stacking_ensemble yes -finetune_epochs 10 -bayesian_epoch 10 -epochs 10 -balance_weight no -only_ensemble yes -init_name Init_${i}
# done

## 
