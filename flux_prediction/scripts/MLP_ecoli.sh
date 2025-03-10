#!/bin/bash

#SBATCH --job-name=mlp_ecoli
#SBATCH --time=20:00:00
#SBATCH --cpus-per-task=8
#SBATCH --mem=24G
#SBATCH --output=./logs/slurm/%x_%j.out
#SBATCH --error=./logs/slurm/%x_%j.err
SECONDS = 0
cd ~/project/metabolic_graph
module load miniconda
conda activate metabolomics

python  main.py --model MLP --data ecoli
echo “Time elapsed: $SECONDS seconds” >> mlp_ecoli.txt