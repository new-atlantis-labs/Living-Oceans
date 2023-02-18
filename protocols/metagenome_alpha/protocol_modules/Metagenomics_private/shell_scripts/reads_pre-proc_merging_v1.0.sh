#!/bin/bash 

#PBS -l nodes=1:ppn=4
#PBS -l mem=30gb
#PBS -l walltime=24:00:00
#PBS -A starting_2022_048

#FASTQ_ID=SRR5720246

N_JOBS=4

DEPLOY_DIR=/dodrio/scratch/projects/starting_2022_048/NAD/Metagenomics_private/scripts/

cd ${DEPLOY_DIR}

source activate /dodrio/scratch/projects/starting_2022_048/envs/VEBA-preprocess_env/

READS_DIR=/dodrio/scratch/projects/starting_2022_048/NAD/Metagenomics_private/data/reads/ALOHA_HOT_5m/

RIBOSOMAL_KMERS=/dodrio/scratch/projects/starting_2022_048/SeqData/VEBA/veba_database/Contamination/kmers/ribokmers.fa.gz

R1=${READS_DIR}${FASTQ_ID}"_1.fastq.gz"
R2=${READS_DIR}${FASTQ_ID}"_2.fastq.gz"

###Preproccessing via VEBA module
# preprocess.py --name ${FASTQ_ID} --forward_reads ${R1} --reverse_reads ${R2} --project_directory ${READS_DIR} --n_jobs ${N_JOBS} --kmer_database ${RIBOSOMAL_KMERS} --retain_kmer_hits 0 --retain_non_kmer_hits 0

MERGED_READS=${READS_DIR}${FASTQ_ID}"_merged.fastq"
UNMERGED_R1=${READS_DIR}${FASTQ_ID}"_unmerged_1.fastq"
UNMERGED_R2=${READS_DIR}${FASTQ_ID}"_unmerged_2.fastq"

###Merge paired-end reads
/dodrio/scratch/projects/starting_2022_048/Utilities/Bioinformatics/bbmap/bbmerge-auto.sh in1=${R1} in2=${R2} out=${MERGED_READS} outu1=${UNMERGED_R1} outu2=${UNMERGED_R2}

###Remove initially pre-processed and unmerged reads files

rm ${R1} ${R2} ${UNMERGED_R1} ${UNMERGED_R2}

