#! /bin/bash

# run_contemp_installer_calculation.sh
# Wrapper file for SLURM job running calc_contemp_installs_per_obs.R

## Did you load the relevant R module if any packages are required?
# module load R/3.4.4

#SBATCH --job-name contempinstallers
#SBATCH -o job_output.out
#SBATCH --mem=2G
#SBATCH -e job_errors.err
# #SBATCH -N 1
# #SBATCH -n 24
# The above two commands request one node with 24 cores
# Then use parpool(str2num(getenv('SLURM_CPUS_ON_NODE'))) in matlab


Rscript calc_contemp_installs_per_obs.R

## Submit as sbatch run_file.sh
