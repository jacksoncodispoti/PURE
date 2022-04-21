#!/bin/bash
#SBATCH --time=10:15:00     # Time limit for the job (REQUIRED).
#SBATCH --job-name=my_test_job    # Job name
#SBATCH --ntasks=1       # Number of cores for the job. Same as SBATCH -n 1
#SBATCH --partition=P4V16_HAS16M128_L 
#SBATCH --gres=gpu:3     # Partition/queue to run the job in. (REQUIRED)
#SBATCH -e slurm-%j.err  # Error file for this job.
#SBATCH -o slurm-%j.out  # Output file for this job.
#SBATCH -A  gel_msi290_s22cs685      # Project allocation account name (REQUIRED)
 

module load ccs/singularity
container=/share/singularity/images/ccs/pytorch/pytorch.sinf
singularity exec --nv $container ./nlp-project.sh

