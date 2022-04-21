#!/bin/bash
#SBATCH -t 00:45:00   				#Time for the job to run 
#SBATCH --job-name=Run_entity		   	#Name of the job

#SBATCH --partition=P4V12_SKY32M192_L		#Name of the CPU queue
#SBATCH --account=gel_msi290_s22cs685		#Name of account to run under
#SBATCH --mail-type ALL				#Send email on start/end
#SBATCH --mail-user jackson.codispoti@uky.edu		#Where to send email

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH -e results/run_entity-%j.err
#SBATCH -o results/run_entity-%j.out
#SBATCH -A gel_msi290_s22cs685

#SBATCH --gres=gpu:1

module load ccs/cuda/10.0.130
module load ccs/singularity

container=/share/singularity/images/ccs/pytorch/pytorch.sinf


echo "Job running on SLURM NODELIST: $SLURM_NODELIST " 
time singularity exec --nv $container ./nlp-project-j.sh
