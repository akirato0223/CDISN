#!/bin/bash
#SBATCH -p scavenger
#SBATCH --account=carlsonlab
#SBATCH --job-name=zResampTS100_12152021
#SBATCH -o logs_resampTS100_%A_%a_12152021.out
#SBATCH -e logs_resampTS100_%A_%a_12152021.err
#SBATCH --array=1
#SBATCH -c 2
#SBATCH --mem-per-cpu=8G
#SBATCH --exclusive

module load Python-GPU/3.7.6

PYTHONPATH=/hpc/home/zcb2/cross-domain-learning python store_smaller_version_of_cached_subset.py -n $SLURM_CPUS_PER_TASK

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