export MODEL_NAME="CompVis/stable-diffusion-v1-4"
export OUTPUT_DIR="/home/dcor/sarfaty/stable_retribution/imagic"
export INPUT_IMAGE="/home/dcor/sarfaty/stable_retribution/imagic/remote_project_files/examples/imagic/imgs/obama.jpg"
export HUGGINGFACE_TOKEN="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"

/home/dcor/adihaviv1/miniconda3/envs/unitune2/bin/accelerate launch /home/dcor/sarfaty/stable_retribution/imagic/remote_project_files/examples/imagic/train_imagic.py \
  --pretrained_model_name_or_path=$MODEL_NAME \
  --output_dir=$OUTPUT_DIR \
  --input_image=$INPUT_IMAGE \
  --target_text="A photo of Barack Obama smiling" \
  --seed=3434554000 \
  --resolution=512 \
  --mixed_precision="fp16" \
  --use_8bit_adam \
  --gradient_accumulation_steps=1 \
  --emb_learning_rate=1e-3 \
  --learning_rate=1e-6 \
  --emb_train_steps=500 \
  --max_train_steps=1000 \
  --gradient_checkpointing
