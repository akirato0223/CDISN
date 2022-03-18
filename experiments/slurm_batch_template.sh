#!/bin/bash
#SBATCH -p #######-gpu
#SBATCH --account=#######
#SBATCH --job-name=#######
#SBATCH -o logs_cdisn_training_%A_%a_#######.out
#SBATCH -e logs_cdisn_training_%A_%a_#######.err
#SBATCH --array=1-foo
#SBATCH -c 2
#SBATCH --mem-per-cpu=8G
#SBATCH --exclusive
#SBATCH --gres=gpu:1

module load Python-GPU/3.7.6

PYTHONPATH=foo/cross-domain-learning python cdisn_training_foo.py -n $SLURM_CPUS_PER_TASK

# ###########################################################################
#    Copyright 2021 Zachary C. Brown

#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at

#        http://www.apache.org/licenses/LICENSE-2.0

#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
# ###########################################################################
