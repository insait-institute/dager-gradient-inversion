#!/bin/bash
array=( $@ )
len=${#array[@]}
last_args=${array[@]:3:$len}

python attack.py --dataset $1 --split val --n_incorrect 0 --n_inputs 100 --batch_size $2 --l1_filter all --l2_filter non-overlap --model_path gpt2 --device cuda --task seq_class --defense_noise $3 --cache_dir ./models_cache $last_args
