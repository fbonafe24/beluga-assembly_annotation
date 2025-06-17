#!/bin/bash
#SBATCH --job-name=flye_beluga
#SBATCH --account=def-dsteinke
#SBATCH --time=3-00:00:00
#SBATCH --cpus-per-task=16
#SBATCH --mem=500G
#SBATCH --output=flye_%j.out
#SBATCH --mail-user=fbonafe@uoguelph.ca
#SBATCH --mail-type=ALL

# Enable conda command
source ~/miniconda3/etc/profile.d/conda.sh

# Activate your environment
conda activate assembly

flye \
 --pacbio-raw data/beluga_all.fasta.gz \
 --genome-size 2.4g \
 --out-dir all_flye \
 --threads 16
