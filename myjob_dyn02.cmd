#!/bin/bash
#SBATCH -J dyn_xbraid
#SBATCH -o ./%x.%j.%N.out
#SBATCH -D ./
#SBATCH --get-user-env
#SBATCH --clusters=cm2
#SBATCH --partition=cm2_std
#SBATCH --nodes=20
#SBATCH --ntasks-per-node=1
#SBATCH --mail-type=end
#SBATCH --mail-user=jan.grimm@tum.de
#SBATCH --export=ALL
#SBATCH --time=08:00:00
  
module load slurm_setup
 
time mpirun -np 10 ./ex-02_dyn -interval_len 3.1415926535 -ntime 32768 -nspace 16385 -file_num 4 -info_str mpi_num_procs_add -info_num 10
