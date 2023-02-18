#!/bin/bash

#Swap to large-memory partition
ml swap cluster/dodrio/cpu_rome_512

###Submit to the scheduler as follows: bash submit_ids4humann_profiling.sh

DEPLOY_DIR=/dodrio/scratch/projects/starting_2022_048/NAD/Metagenomics_private/scripts/

cd ${DEPLOY_DIR}

SRR_ID_LIST=/dodrio/scratch/projects/starting_2022_048/NAD/Metagenomics_private/data/reads/ALOHA_HOT_5m/ssr_ids.txt

for fastq_fid in `cat ${SRR_ID_LIST}`;
do 
  qsub -v 'FASTQ_ID='"$fastq_fid"'' humann_test_v1.0.sh;
done
