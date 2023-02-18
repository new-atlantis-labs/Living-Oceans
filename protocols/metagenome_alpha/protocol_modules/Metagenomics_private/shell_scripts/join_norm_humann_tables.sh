###Reformatting of humann output tables:

###Remember activate the appropriate module: source activate biobakery
source activate $1 #/dodrio/scratch/projects/starting_2022_048/envs/biobakery3

#TABLES_DIR=/dodrio/scratch/projects/starting_2022_048/NAD/Metagenomics_private/data/humann_output_jay_db
#TABLES_DIR=/dodrio/scratch/projects/starting_2022_048/NAD/Metagenomics_private/data/humann_output_veba_db_v2
TABLES_DIR=$2

UNIREF_ID=$3 #uniref90_rxn OR uniref50_rxn

#Join all tables into one single table across all samples considered
humann_join_tables -i ${TABLES_DIR} -o ${TABLES_DIR}/joint_samples_genefamilies.tsv --file_name genefamilies
humann_join_tables -i ${TABLES_DIR} -o ${TABLES_DIR}/joint_samples_path_abundance.tsv --file_name pathabundance

#Renormalize data to cpm (copies per million)
humann_renorm_table -i ${TABLES_DIR}/joint_samples_genefamilies.tsv -o ${TABLES_DIR}/joint_samples_genefamilies-cpm.tsv --units cpm --update-snames
humann_renorm_table -i ${TABLES_DIR}/joint_samples_path_abundance.tsv -o ${TABLES_DIR}/joint_samples_path_abundance-cpm.tsv --units cpm --update-snames

#Regrouping cpm-normalized gene family abundances to other functional categories, i.e. MetaCyc reaction (RXN) abundances
humann_regroup_table --input ${TABLES_DIR}/joint_samples_genefamilies-cpm.tsv --output ${TABLES_DIR}/joint_samples_regrouped2rxn-cpm.tsv --groups ${UNIREF_ID}

#Attaching some human-readable descriptions of the UniRef IDs to facilitate biological interpretation
humann_rename_table --input ${TABLES_DIR}/joint_samples_regrouped2rxn-cpm.tsv --output ${TABLES_DIR}/joint_samples_regrouped2rxn-cpm-named.tsv --names metacyc-rxn
