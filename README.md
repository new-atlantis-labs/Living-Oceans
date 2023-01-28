# 🌊 `New Atlantis: Living Oceans Repository`

Welcome to the`New Atlantis Living Oceans Repository` or `NALOR`, we are building a high quality library of modular pipelines focused around measuring biodiversity. Our mission is building an open set of tools that addres biodiversity loss in our oceans through providing a viable business model to Marine Protected Areas (MPAs). We are doing this by building an open marine biodiversity analytics platform to monitor and forecast the health of Marine Protected Areas. The data will be used as a foundation for marine biocredits and blue carbon credits to be generated.

> [![Discord](https://img.shields.io/badge/Discord-New%20Atlantis-7289da)](https://discord.gg/newatlantis)
[![Twitter](https://img.shields.io/badge/Twitter-%40NewAtlantisDAO-00acee)](https://twitter.com/NewAtlantisDAO)


# 🧬 `Pipelines`

The pipelines section of `NALOR` is a collection of easy-to-deploy pipelines for accomplising different processing tasks on ocean data samples.

![Main Image](https://github.com/new-atlantis-dao/presentations/blob/main/Orcas%20Norway-220116-00461.jpg)

>Photo used with permission by Paul Nicklen, co-founder of SeaLegacy.org, New Atlantis Founding Advisor, NatGeo Contributor, [Instagram](https://www.instagram.com/paulnicklen/) 




# 🪄 `Datasets`
A library of dataset references to sample running the pipelines. We standardize our datasets through datacards, providing a standard way to look at measured biodiversity and tell if you've got the whole picture.

## 👨‍🏫 Templates

The reference formats for how we build our pipelines for how we build pipelines and datacards. 

## ⚙️ Installation
You can set up the living oceans repo on your workstation at home in one line!
```
git clone https://github.com/new-atlantis-dao/Living-Oceans.git
```
Congratulations, you can now start using `NALOR`.

## 📯 Tutorial
`NALOR` can be used to explore  a local section of ocean's planktonic network. A written tutorial on how to use the `NALOR` pipeline will be released at a later date.

> ![Tutorial](https://img.shields.io/badge/NALOR-Tutorial-%23d8b365)



## 🗂 Project Organization
------------
```
├── README.md                         <- The top-level README for developers using this project.
├── datasets                          <- New Atlantis datacard identifiers for relevant data.
│   └── README.md
├── protocols                         <- Pipelines in active development by New Atlantis.
│   ├── README.md                     <- General README of pipelines currently in development.
│   └── metagenome_alpha              <- Metagenome processing pipeline form New Atlantis.
│       ├── README.md                 <- README for the metagenome alpha pipeline.
│       ├── metagenome_main.ipynb
│       └── protocol_modules          <- Processing modules for use in metagenome_alpha.
│           ├── __init__.py
│           ├── import_notebook.py
│           ├── test_import.py
│           └── test_notebook.ipynb
└── templates                         <- Template files for new pipelines and datacard entries.
    ├── README.md                     <- General README for function of the template's function.
    ├── dataset_template
    │   └── dataset_template.ipynb
    └── protocol_template
        └── protocol_template.ipynb
```
## 📜 Publications
### Software and marker gene sequences used to build a plankton specific database for taxonomic profiling derive from the following publications:

[Microbial abundance, activity and population genomic profiling with mOTUs2 (2019)](https://www.nature.com/articles/s41467-019-08844-4)
> [![Nature](https://img.shields.io/badge/Nature-s41467--019--08844--4-F39B7F)](https://www.nature.com/articles/s41467-019-08844-4)


[read_counter](https://github.com/AlessioMilanese/read_counter)
A tool to count the number of reads (from a fastq file) that map to a set of nucleotide sequences (in a fasta format).
> [![Github](https://img.shields.io/badge/GitHub-read_counter-6e5494)](https://github.com/AlessioMilanese/read_counter)


[A robust approach to estimate relative phytoplankton cell abundances from metagenomes (2022)](https://onlinelibrary.wiley.com/doi/full/10.1111/1755-0998.13592)
> [![DOI](https://img.shields.io/badge/DOI-10.1111%2F1755--0998.13592-B31B1B)](https://onlinelibrary.wiley.com/doi/full/10.1111/1755-0998.13592)

[Toward a global reference database of COI barcodes for marine zooplankton (2021)](https://link.springer.com/article/10.1007/s00227-021-03887-y)
> [![DOI](https://img.shields.io/badge/DOI-10.1007%2Fs00227--021--03887--y-B31B1B)](https://link.springer.com/article/10.1007/s00227-021-03887-y)

## 📝 Please Cite
```
A simple Taxonomic Plankton Profiler Tool (unpublished work).
```
## 📲 Contact
Please reach out with any comments, concerns, or discussion regarding `LOMAP`

> [![Discord](https://img.shields.io/badge/Discord-New%20Atlantis-7289da)](https://discord.gg/newatlantis)
[![Twitter](https://img.shields.io/badge/Twitter-%40NewAtlantisDAO-00acee)](https://twitter.com/NewAtlantisDAO)
[![Email](https://img.shields.io/badge/Email-tom%40newatlantis.io-%23ffce00)](tom@newatlantis.io)
