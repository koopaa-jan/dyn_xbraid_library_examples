#!/bin/bash
#SBATCH -J dyn_xbraid
#SBATCH -o ./%x.%j.%N.out
#SBATCH -D ./
#SBATCH --get-user-env
#SBATCH --clusters=cm2_tiny
#SBATCH --partition=cm2_tiny
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mail-type=end
#SBATCH --mail-user=jan.grimm@tum.de
#SBATCH --export=ALL
#SBATCH --time=07:00:00
  
module load slurm_setup
 
time mpirun -np 1 ./ex-02_dyn -interval_len 6.4 -file_num 0 -info_str mpi_num_procs_add -info_num 0
