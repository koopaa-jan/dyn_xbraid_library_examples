#!/bin/bash
#SBATCH -J dyn_xbraid
#SBATCH -o ./%x.%j.%N.out
#SBATCH -D ./
#SBATCH --get-user-env
#SBATCH --clusters=cm2
#SBATCH --partition=cm2_std
#SBATCH --nodes=5
#SBATCH --ntasks-per-node=5
#SBATCH --mail-type=end
#SBATCH --mail-user=jan.grimm@tum.de
#SBATCH --export=ALL
#SBATCH --time=00:30:00
  
module load slurm_setup
 
time mpirun -np 15 ./ex-heat_equation_2D 0.1 2
