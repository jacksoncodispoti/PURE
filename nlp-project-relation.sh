#!/bin/bash
pip install -r requirements.txt
# sciERC dataset
scierc_dataset=scierc_data/processed_data/json/
#chemprot_dataset
chemprot_train_data=chemprot_data/train.json
# pre-trained entity model
chemprot_ent_model=chemprot_models/ent-chemprot-ctx0/
# pre-trained full relation model
chemprot_rel_model=chemprot_models/rel-chemprot-ctx0/
# pre-trained approximation relation model
scierc_rel_model_approx=chemprot_models/rel_approx-scib-ctx0/
chemprot_train_data=$chemprot_train_data
# pre-trained biobert entity model
chemprot_ent_biobert_model=chemprot_biobert_models/ent-chemprot-biobert-ctx0/
# pre-trained biobert entity model
chemprot_rel_biobert_model=chemprot_biobert_models/rel-chemprot-biobert-ctx0/

# pre-trained bert_base entity model
chemprot_ent_bert_base_model=chemprot_bert_base_models/ent-chemprot-bert_base-ctx0_models/
# pre-trained bert_base entity model
chemprot_rel_bert_base_model=chemprot_bert_base_models/rel-chemprot-bert_base-ctx0/


model=biobert-base-cased-v1.2

#python3 run_relation.py \
#  --task chemprot \
#  --do_train --train_file ${chemprot_train_data} \
#  --do_eval \
#  --model bert-base-uncased \
#  --do_lower_case \
#  --train_batch_size 32 \
#  --eval_batch_size 32 \
#  --learning_rate 2e-5 \
#  --num_train_epochs 10 \
#  --context_window 100  \
#  --max_seq_length 128 \
#  --entity_output_dir ${chemprot_ent_bert_base_model} \
#  --output_dir ${chemprot_rel_bert_base_model}




#python3 run_relation.py \
#  --task chemprot \
#  --do_train --train_file ${chemprot_train_data} \
#  --do_eval \
#  --model ${model} \
#  --do_lower_case \
#  --train_batch_size 32 \
#  --eval_batch_size 32 \
#  --learning_rate 2e-5 \
#  --num_train_epochs 10 \
#  --context_window 100  \
#  --max_seq_length 128 \
#  --entity_output_dir ${chemprot_ent_biobert_model} \
#  --output_dir ${chemprot_rel_biobert_model}


#python run_relation_approx.py \
# --task chemprot\
# --do_train --train_file ${chemprot_train_data} \
# --do_eval \
# --model allenai/scibert_scivocab_uncased \
# --do_lower_case \
# --num_train_epochs 10 \
# --train_batch_size 32 \
# --eval_batch_size 32 \
# --context_window 100 \
# --max_seq_length 512 \
# --entity_output_dir ${chemprot_ent_model}\
# --output_dir ${chemprot_rel_model} \


#python3 run_relation.py \
#  --task chemprot \
#  --do_eval --eval_test \
#  --model ${model} \
#  --do_lower_case \
#  --context_window 100\
#  --max_seq_length 512 \
#  --entity_output_dir ${chemprot_ent_biobert_model} \
#  --output_dir ${chemprot_rel_biobert_model}

python3 run_eval.py --prediction_file ${chemprot_rel_bert_base_model}predictions.json

#python3 run_relation.py \
#  --task chemprot \
#  --do_train --train_file ${chemprot_train_data} \
#  --do_eval \
#  --model allenai/scibert_scivocab_uncased \
#  --do_lower_case \
#  --train_batch_size 32 \
#  --eval_batch_size 32 \
#  --learning_rate 2e-5 \
#  --num_train_epochs 10 \
#  --context_window 100  \
#  --max_seq_length 128 \
#  --entity_output_dir ${chemprot_ent_model} \
#  --output_dir ${chemprot_rel_model}
