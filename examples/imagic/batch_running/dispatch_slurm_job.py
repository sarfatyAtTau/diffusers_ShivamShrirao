import subprocess
script_path = 'imagic_train.slurm'
# script_path = '/home/dcor/sarfaty/git/diffusers_ShivamShrirao/examples/imagic/launch.sh'

from huggingface_hub.hf_api import HfFolder
HfFolder.save_token('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')

# Run the shell script
subprocess.run(['sbatch', script_path], check=True)
print("sbatch imagic_train.slurm")