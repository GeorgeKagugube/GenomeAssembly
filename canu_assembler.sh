#!/usr/bin/bash -l

## State the number of cores 
#$ -pe mpi 12

## Request for the number of threads
#$ -pe smp 24

## State the amount of RAM per core
#$ -l mem=10G

## Select the run time
#$ -l h_rt=48:00:00

## Specify the working directory here
#$ -wd /home/uczrgwk/Scratch/manchurica_ash/scripts/assemblies/canu

## Activate the conda enironent here
conda activate /home/uczrgwk/miniconda3/envs/canu

## Set up the input and output directories here
inputdir="/home/uczrgwk/Scratch/manchurica_ash/data/isoseq_data/S47_trimmed_fastq.fq"
short_reads="/home/uczrgwk/Scratch/manchurica_ash/data/isoseq_data/LK_Fm_InnerCambL1.fq"

## Run the canu command here
canu -p canu -d mandchurica genomeSize=800000000 useGrid=false -nanopore-raw $inputdir
