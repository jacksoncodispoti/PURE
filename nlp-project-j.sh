#!/bin/bash
pip install -r requirements.txt
export SAVE_DIR=./output
export DATA_DIR=../datasets/NER
export MAX_LENGTH=192
export BATCH_SIZE=32
export NUM_EPOCHS=30
export SAVE_STEPS=1000
export ENTITY=NCBI-disease
export SEED=1
export scierc_dataset=scierc_data/processed_data/json/

scierc_dataset=scierc_data/processed_data/json/
chemprot_dataset=chemprot_data/
scierc_ent_model=scierc_models/ent-scib-ctx0/
scierc_rel_model=scierc_models/rel-scib-ctx0
scierc_rel_model_approx=scierc_models/rel_approx-scib-ctxb0/

#dataset=$scierc_dataset
dataset=$chemprot_dataset
task=chemprot
#model=allenai/scibert_scivocab_uncased
#model=/project/msi290_s22cs685/codispoti_jiang_li_xu/PURE/biobert-base-cased-v1.2
#model=dmis-lab/biobert-base-cased-v1.2
model=biobert-base-cased-v1.2
#model=https://huggingface.co/dmis-lab/biobert-base-cased-v1.2/raw/main/config.json

python3 run_entity.py --do_eval --eval_test --context_window 0 --task ${task} --data_dir ${dataset} --model ${model} --bert_model_dir ${model} --output_dir ${scierc_ent_model}
