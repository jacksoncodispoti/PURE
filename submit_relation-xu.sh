#!/bin/bash
#SBATCH -t 48:00:00   				#Time for the job to run 
#SBATCH --job-name=Run_relation		   	#Name of the job

#SBATCH --partition=P4V12_SKY32M192_L		#Name of the CPU queue
#SBATCH --account=gel_msi290_s22cs685		#Name of account to run under
#SBATCH --mail-type ALL				#Send email on start/end
#SBATCH --mail-user xu.tao@uky.edu		#Where to send email

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH -e results-xu/run_relation-%j.err
#SBATCH -o results-xu/run_relation-%j.out
#SBATCH -A gel_msi290_s22cs685

#SBATCH --gres=gpu:1

module load ccs/cuda/10.0.130
module load ccs/singularity

container=/share/singularity/images/ccs/pytorch/pytorch.sinf

echo "Job running on SLURM NODELIST: $SLURM_NODELIST " 
time singularity exec --nv $container ./nlp-project-relation.sh
