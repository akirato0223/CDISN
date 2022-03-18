# cross-domain-learning

A repository for leveraging information from different domains (time series, images, etc) to learn useful features for specific tasks.

## Introduction

### Repository Structure and Organization

This repository is structured into as follows:

- the `data_loading` module contains definitions of data loading classes/functions for loading training/validation/testing data into specific ML algorithms and architectures.
- the `data_preprocessing` module contains definitions of various classes/functions for preparing various datasets (e.g., the TUH Abnormal EEG dataset) to be consumed by training pipelines defined elsewhere in this repository.
- the `experiments` module contains scripts for running various experiments using this repository (e.g., a cross-validation comparisson of the RP and TS baselines on a specific dataset).
- the `models` module contains definitions of various ML algorithms/architectures, including SelfSL, SemiSL, and other algorithms.
- the `results_analytics` module contains definitions of functions/classes for analyzing and summarizing the results generated from running the `experiments` module's scripts.
- the `templates` module contains standardized code snippets, file directory examples, and testing code functions to streamline collaboration on updates made to this repository.
- the `train` module contains the definitions/implementations for various training pipelines, particularly algorithm-specific training loops.
- the `utils` module contains definitions of general functions and other necessary tools that are broadly applicable across models/experiments defined elsewhere in the repository.

### Getting Started: Setup and Basic Experiments

TO-DO: write simple dependency installation / run scripts to allow users to replicate basic experiments

### Before Committing

- If you have not installed pre-commit, run `pip install pre-commit`.
- Run `pre-commit install`
- Check if `pre-commit run --all-files` works.
- Every time you commit, all formatters should be run automatically.

## Contributing

Please consult the `templates` module if you would like to begin contributing to the repository. In addition, added files and folders should follow the general pattern and naming conventions outlined in this repository.

## Debugging

TO-DO: write simple test script(s) to assist users/collaborators in trouble-shooting issues

## Related Work

_Self-SL_ (implemented in this repository)

- Banville et al's arxiv.org/pdf/2007.16104.pdf for RP, TS, and CPC pretext Self-SL tasks
- Cheng et al's https://arxiv.org/pdf/2007.04871.pdf for SACL pretext Self-SL pipeline
- Mohsenvad et al's http://proceedings.mlr.press/v136/mohsenvand20a/mohsenvand20a.pdf for SeqCLR pretext Self-SL pipeline
- PhaseSwap as described in https://arxiv.org/pdf/2009.07664.pdf by Abdelhak Lemkhenter and Paolo Favaro

_Semi-SL_ (implemented in this repository)

- Tian et al's https://arxiv.org/pdf/2005.10243.pdf
- Azabou et al's https://arxiv.org/pdf/2102.10106.pdf for MYOW SemiSL algorithm - see also https://github.com/nerdslab/myow

_RL_ (not currently implemented in this repository)

- Cubuk et al's https://arxiv.org/pdf/1805.09501.pdf for AutoAugment-esque RL setup.

_Other_ (implemented in this repository)

- Cross-Domain Information Sharing Networks (CDISNs) - novel algorithm being developed here.

**Related Repositories**

- https://github.com/jstranne/mouse_self_supervision for data loading pipeline and Banville et al's RP, TS, and CPC implementations
- https://github.com/zacharycbrown/ssl_baselines_for_biosignal_feature_extraction : sibling repository to this one, contains versions of RP/TS/CPC, PhaseSwap, SACL, and SeqCLR algorithms
