#! /bin/sh

#SBATCH --job-name=stable_retribution
#SBATCH --output=/home/dcor/sarfaty/stable_retribution/try_batch.out # redirect stdout
#SBATCH --error=/home/dcor/sarfaty/stable_retribution/try_batch.err # redirect stderr
#SBATCH --partition=studentbatch # (see resources section)
#SBATCH --time=1440 # max time (minutes)
#SBATCH --signal=USR1@120 # how to end job when time’s up
#SBATCH --nodes=1 # number of machines
#SBATCH --ntasks=1 # number of processes
#SBATCH --mem=50000 # CPU memory (MB)
#SBATCH --cpus-per-task=4 # CPU cores per process
#SBATCH --gres=gpu:2 # number of GPUs per node

/home/dcor/sarfaty/miniconda3/envs/ldm/bin/python /home/dcor/sarfaty/git/stable-retribution/scripts/txt2img.py --prompt "a photograph of an astronaut riding a horse" --plms