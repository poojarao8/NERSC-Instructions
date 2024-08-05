#!/bin/bash

#SBATCH -A <ACCOUNT> 
#SBATCH -C gpu
#SBATCH -q debug
#SBATCH -t 00:30:00
#SBATCH -N 1 
#SBATCH --ntasks-per-node=1
#SBATCH --gpus-per-task=1
#SBATCH --gpu-bind=none
#SBATCH --image=nvcr.io/nvidia/nightly/cuda-quantum:latest
#SBATCH --module=cuda-mpich

srun -N 1 -n 1 shifter python sample_file.py
