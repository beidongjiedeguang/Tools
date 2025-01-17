#!/bin/bash

WGET=${WGET:-wget}

# The script automatically choose default settings of miniconda for installation
# Miniconda will be installed in the HOME directory. ($HOME/miniconda3).
# Also don't make miniconda's python as default.

if [ -d "$DOWNLOAD_DIR" ]; then
  cp -p "$DOWNLOAD_DIR/Miniconda3-latest-Linux-x86_64.sh" . || exit 1
else
  $WGET https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh || exit 1
fi
bash Miniconda3-latest-Linux-x86_64.sh -b

$HOME/miniconda3/bin/python -m pip install --user tqdm -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com --default-timeout=1000 
$HOME/miniconda3/bin/python -m pip install --user scikit-learn -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com --default-timeout=1000 
$HOME/miniconda3/bin/python -m pip install --user librosa -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com --default-timeout=1000 
$HOME/miniconda3/bin/python -m pip install --user h5py -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com --default-timeout=1000 
