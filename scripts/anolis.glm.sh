#!/bin/bash

#Define file names
pfile="/project/stuckert/jvnguy45/anolis_fpp/processed_data/glm/anolisplink"
pheno_file="/project/stuckert/jvnguy45/anolis_fpp/raw_data/phenotype.phe"
output_dir="/project/stuckert/jvnguy45/anolis_fpp/processed_data/glm"
mkdir -p "$output_dir"

#Association analysis using GLM in plink2
plink2 --pfile $pfile \
       --pheno $pheno_file \
       --pheno-name Phenotype \
       --glm \
       --allow-extra-chr \
       --threads 20 \
       --memory 60000 \
       --out $output_dir/association
