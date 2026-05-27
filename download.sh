#!/bin/bash
# Download all human data (pretrain + target) for seen_tasks and unseen_tasks.
# Task names come from TASK_SET_REGISTRY via --task_set, so they stay in sync.
# Note: unseen_tasks have no target split; missing combos are skipped automatically.
set -e

source ~/anaconda3/etc/profile.d/conda.sh
conda activate robocasa

echo "y" | python -m robocasa.scripts.download_datasets \
    --task_set seen_tasks unseen_tasks \
    --split pretrain target \
    --source human
