root_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
venv_dir=$root_dir/.venv
red="\033[0;31m"
green="\033[0;32m"
yellow="\033[0;33m"
nc='\033[0m' # No Color

# function to check if the script is sourced
_ensure_sourced() {
    if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
        echo -e "${red}Error: This script must be sourced, not executed.${nc}"
        echo -e "${red}Please run: source ${BASH_SOURCE[0]}${nc}"
        exit 1
    fi
}

_ensure_sourced

# pip will cache its pacakges here
export TMPDIR=$PWD/.cache/tmp
# create the cache
mkdir -p $TMPDIR
# create venv
if [[ ! -d $venv_dir ]]; then
  echo -e "${green}Creating a Python's Virtual Env...${nc}"
  python -m venv .venv
fi
# activate venv
. .venv/bin/activate

