#!/bin/bash
#SBATCH -J dyn_xbraid
#SBATCH -o ./%x.%j.%N.out
#SBATCH -D ./
#SBATCH --get-user-env
#SBATCH --clusters=cm2
#SBATCH --partition=cm2_std
#SBATCH --nodes=14
#SBATCH --ntasks-per-node=4
#SBATCH --mail-type=end
#SBATCH --mail-user=jan.grimm@tum.de
#SBATCH --export=ALL
#SBATCH --time=08:00:00
  
module load slurm_setup
 
time mpirun -np 56 ./ex-02 -file_num 10 -ntime 32768 -nspace 16385
