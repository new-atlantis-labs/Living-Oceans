#!/bin/bash

###Submit to the scheduler as follows: bash submit_reads_pre-proc_merging.sh

DEPLOY_DIR=/dodrio/scratch/projects/starting_2022_048/NAD/Metagenomics_private/scripts/

cd ${DEPLOY_DIR}

SRR_ID_LIST=/dodrio/scratch/projects/starting_2022_048/NAD/Metagenomics_private/data/reads/ALOHA_HOT_5m/ssr_ids.txt

for fastq_fid in `cat ${SRR_ID_LIST}`;
do 
  qsub -v 'FASTQ_ID='"$fastq_fid"'' reads_pre-proc_merging_v1.0.sh;
done