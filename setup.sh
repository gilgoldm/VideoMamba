#!/bin/bash

# exit on command failure
set -eE
set -o pipefail

root_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
venv_dir=$root_dir/.venv
red="\033[0;31m"
green="\033[0;32m"
yellow="\033[0;33m"
nc='\033[0m' # No Color

. ./activate.sh

pip install torch==2.1.1 torchvision==0.16.1 torchaudio==2.1.1
pip install -r requirements.txt
pip install -e causal-conv1d
pip install -e mamba

echo -e "${green}Script is done successfuly${nc}"

