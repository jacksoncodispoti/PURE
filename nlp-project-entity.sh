#!/bin/bash
pip install -r requirements.txt
# sciERC dataset
scierc_dataset=scierc_data/processed_data/json/
#chemprot_dataset
chemprot_dataset=chemprot_data/
# pre-trained chemprot scibert entity model
chemprot_ent_scibert_model=chemprot_scibert_models/ent-chemprot-ctx0/
# pre-trained full chemprot relation model
chemprot_rel_model=chemprot_scibert_models/rel-chemprot-ctx0/
# pre-trained approximation relation model
chemprot_rel_model_approx=chemprot_scibert_models/rel_approx-chemprot-ctx0/
# pre-trained biobert entity model
chemprot_ent_biobert_model=chemprot_biobert_models/ent-chemprot-biobert-ctx0/

# pre-trained bert_base entity model
chemprot_ent_bert_base_model=chemprot_bert_base_models/ent-chemprot-bert_base-ctx0_models/



model=biobert-base-cased-v1.2

#python3 run_entity.py \
#    --do_train --do_eval \
#    --learning_rate=1e-5 --task_learning_rate=5e-4 \
#    --train_batch_size=16 \
#    --num_epoch=20 \
#    --context_window 0 \
#    --task chemprot \
#   --data_dir ${chemprot_dataset} \
#    --model bert-base-uncased \
#    --output_dir ${chemprot_ent_bert_base_model}



python3 run_entity.py \
    --do_train --do_eval \
    --learning_rate=1e-5 --task_learning_rate=5e-4 \
    --train_batch_size=16 \
    --num_epoch=20 \
    --context_window 0 \
    --task chemprot \
    --data_dir ${chemprot_dataset} \
    --model allenai/scibert_scivocab_uncased \
    --output_dir ${chemprot_ent_scibert_model}



#python3 run_entity.py \
#   --do_eval --eval_test \
#    --context_window 0 \
#    --task chemprot \
#    --num_epoch=20 \
#    --data_dir ${chemprot_dataset} \
#    --model bert-base-uncased  \
#    --output_dir ${chemprot_ent_bert_base_model}

#python3 run_entity.py --do_train --do_eval --learning_rate=1e-5 --task_learning_rate=5e-4 --train_batch_size=16 --num_epoch=20 --context_window 0 --task chemprot --data_dir ${chemprot_dataset} --model ${model}  --bert_model_dir ${model} --output_dir ${chemprot_ent_biobert_model}
