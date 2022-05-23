# using the default hyperparams (of GPT2)
# block size of 1024
# batch size of 1 per device
# 3 train epochs
# no user history

CUDA_VISIBLE_DEVICES=0 \
python -O hulm_ar/HULM_AR/run_clm.py \
    --model_name_or_path gpt2 \
    --instantiate_hart \
    --do_train \
    --do_eval \
    --hostname localhost \
    --db HuLM \
    --train_table fb20lbp_upt50_en_train_10pc \
    --dev_table fb20lbp_upt50_en_non_oosmsgs \
    --output_dir hulm_ar/HULM_AR/experiments/outputs/WithoutOptuna/dev/oosusers/0WithoutHistory \
    --num_train_epochs 3 \
    --per_device_train_batch_size  1 \
    --per_device_eval_batch_size 1 \
    --block_size 1024
    --max_train_blocks 2 \
    --max_val_blocks 2 \
    # --overwrite_output_dir \