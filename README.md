# Entity and Relation Extraction in Biomedial Domain
Xu Tao, Jackson Codispoti, Yuhang Jiang, Yue Lie

This repository is a fork of PURE(https://github.com/princeton-nlp/PURE).

## Get Started
Reference the guide in the PURE repo.
You will have to add the pre-trained biobert-base-uncased-v1.2 model manually.

## Components
### Submission Scripts
There are several submission scripts present. The shell output can be found in results-xu. Evaluation results can be found for individual datasets in their model folders, i.e. scierce_models/chemprot_biobert_models.

- submit_entity-xu.sh - Run entity model on LCC
- submit_relation-xu.sh - Run relation model on LCC
- nlp-project-entity.sh - Driver script for entity model
- nlp-project-relation.sh - Driver script for relation model

### Pre-processed Chemprot
Our pre-processed version of Chemprot is available in chemprot_data.
