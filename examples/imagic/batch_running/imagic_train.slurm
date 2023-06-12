#! /bin/sh

#SBATCH --job-name=stable_retribution
#SBATCH --output=/home/dcor/sarfaty/stable_retribution/imagic/slurm_outputs/batch.out # redirect stdout
#SBATCH --error=/home/dcor/sarfaty/stable_retribution/imagic/slurm_outputs/batch.err # redirect stderr
#SBATCH --partition=studentbatch # (see resources section)
#SBATCH --time=1440 # max time (minutes)
#SBATCH --signal=USR1@120 # how to end job when time’s up
#SBATCH --nodes=1 # number of machines
#SBATCH --ntasks=1 # number of processes
#SBATCH --mem=50000 # CPU memory (MB)
#SBATCH --cpus-per-task=4 # CPU cores per process
#SBATCH --gpus=1 # GPUs in total
#SBATCH --constraint="titan_xp" # we require Titan XP since we need more than 11GB GPU RAM

/home/dcor/sarfaty/stable_retribution/imagic/remote_project_files/examples/imagic/launch.sh