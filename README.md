# Entity and Relation Extraction in Biomedical Domain
Group member: Xu Tao, Jackson Codispoti, Yuhang Jiang, Yue Li

This work aims to develop an end-to-end approach for the Named Entity Recognition(NER) and Relation Exaction(RE) for the Biomedical data.  
This repository is a fork of PURE(https://github.com/princeton-nlp/PURE).  Based on that, we extended the work by training three state-of-the-art encoders: Bert-base, Scibert, Biobert. The trained models along with their training log,  evaluation results  are saved into the directory chemprot_bert_base_models, chemprot_scibert_models and chemprot_biobert_models respectively. In the results folder, there are all the relevant outputs from the training phase, evaluation phase, and the end to end evaluation. We hope this work can be considered as a new baseline of the end-to-end approach on biomedical dataset.  

## Get Started
Reference the guide in the PURE repo.
You will have to add the pre-trained biobert-base-uncased-v1.2 model manually.

## Components
There are two encoders trained seperately for NER and RE. The output from the trained NER model is used to train the RE model. 

- run_entity.py      - Core implementation for training a NER model
- run_relation.py    - Core implementation for trianning a ER model



### Submission Scripts
There are several submission scripts present. The shell output can be found in results. Evaluation results can be found for individual datasets in their model folders, i.e. scierce_models/chemprot_biobert_models.

- submit_entity.sh - Run entity model on LCC
- submit_relation.sh - Run relation model on LCC
- nlp-project-entity.sh - Driver script for entity model
- nlp-project-relation.sh - Driver script for relation model

### Pre-processed Chemprot
Our pre-processed version of Chemprot is available in chemprot_data.

### Presentation
The Presenatation slides and final project report can be found in the Documentation directory.  
