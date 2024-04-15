#!/bin/bash
#SBATCH -J dyn_xbraid
#SBATCH -o ./%x.%j.%N.out
#SBATCH -D ./
#SBATCH --get-user-env
#SBATCH --clusters=cm2_tiny
#SBATCH --partition=cm2_tiny
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=2
#SBATCH --mail-type=end
#SBATCH --mail-user=jan.grimm@tum.de
#SBATCH --export=ALL
#SBATCH --time=06:00:00
  
module load slurm_setup
 
time mpirun -np 2 ./not_dyn_h_e_2D 2
