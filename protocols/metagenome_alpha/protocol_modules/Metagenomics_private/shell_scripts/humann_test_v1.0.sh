#!/bin/bash
#PBS -l nodes=1:ppn=32
#PBS -l mem=400gb
#PBS -l walltime=72:00:00
#PBS -A starting_2022_048

###ARGS passed on the command line should as follows: qsub -v 'FASTQ_ID='"$fastq_fid"'' humann_test_v1.0.sh;
#FASTQ_ID=SRR5720246

###Runing test with plankton-specific database built from VEBA microeuk release v2.0

NUM_THREADS=32

source activate /dodrio/scratch/projects/starting_2022_048/envs/biobakery3

###Set scratch dir
SCRATCH_DIR=${VSC_SCRATCH_PROJECTS_BASE}/starting_2022_048/

DEPLOY_DIR=${SCRATCH_DIR}NAD/Metagenomics_private/scripts/

cd ${DEPLOY_DIR}

READS_DIR=${SCRATCH_DIR}NAD/Metagenomics_private/data/reads/ALOHA_HOT_5m/

export INPUT=/readonly${READS_DIR}${FASTQ_ID}"_merged.fastq"

export OUTPUT=${SCRATCH_DIR}NAD/Metagenomics_private/data/humann_output_veba_db

PROT_DB_DIR=${SCRATCH_DIR}NAD/Metagenomics_private/data/veba_to_humann_db/

export DMND_DB_DIR=/readonly${PROT_DB_DIR}/dmnd_db

# export ID_MAPPING_FILE=/readonly${PROT_DB_DIR}"humann_uniref50_annotations_plankton.tsv"

# humann3 --input ${INPUT} --output ${OUTPUT} --protein-database ${DMND_DB_DIR} --threads ${NUM_THREADS} --bypass-nucleotide-search --input-format fastq --id-mapping ${ID_MAPPING_FILE} --translated-identity-threshold 50 --translated-query-coverage-threshold 80

humann3 --input ${INPUT} --output ${OUTPUT} --protein-database ${DMND_DB_DIR} --threads ${NUM_THREADS} --bypass-nucleotide-search --input-format fastq --translated-identity-threshold 50 --translated-query-coverage-threshold 80 --search-mode uniref50
