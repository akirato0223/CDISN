# caching_utils.py: a file defining general functions for various caching tasks (e.g. saving data, creating directories, etc)
# SEE LICENSE STATEMENT AT THE END OF THE FILE

# dependency import statements
import os
import pickle as pkl


def create_directory(directory):
    """
    generic_python_function: (describe what function's general purpose/functionality is)
     - Inputs:
        * directory (str): the path which must be created
     - Outputs:
        * existing_dir (satisfies os.path.isdir): a directory created in the current file system
     - Usage:
        * PreprocessedDataset.__init__: uses this function to create preprocessed data directories
    """
    split_dir = directory.split(str(os.sep))
    existing_dir = ""
    for folder_name in split_dir:
        existing_dir = existing_dir + os.sep + folder_name
        if not os.path.exists(existing_dir):
            os.makedirs(existing_dir)
    pass


def cache_parameters(save_dir, args, file_name="cached_args.pkl"):
    """
    generic_python_function: (describe what function's general purpose/functionality is)
     - Inputs:
        * save_dir (str): the path to which args will be saved
        * args (Argparse args obj or dictionary): the object detailing all parameters to be saved
     - Outputs:
        * save_dir+file_name (pickle file): picke file containing args
     - Usage:
        * PreprocessedDataset.__init__: uses this function to save parameters used to create dataset(s)
    """
    assert os.path.exists(save_dir)
    with open(save_dir + file_name, "wb") as outfile:
        pkl.dump(args, outfile)
    pass


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
