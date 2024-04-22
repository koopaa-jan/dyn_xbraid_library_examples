#!/bin/bash
#SBATCH -J dyn_xbraid
#SBATCH -o ./%x.%j.%N.out
#SBATCH -D ./
#SBATCH --get-user-env
#SBATCH --clusters=cm2_tiny
#SBATCH --partition=cm2_tiny
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=14
#SBATCH --mail-type=end
#SBATCH --mail-user=jan.grimm@tum.de
#SBATCH --export=ALL
#SBATCH --time=08:00:00
  
module load slurm_setup
 
time mpirun -np 28 ./ex-02_dyn -interval_len 3.1415926535 -ntime 32768 -nspace 16385 -file_num 30 -info_str mpi_num_procs_sub -info_num 14
