export SHELL=$(which zsh)
# proxy
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
# zsh color
export CLICOLOR=1
# cmake cpm
export CPM_SOURCE_CACHE=$HOME/.cache/CPM

if [[ `uname` == "Darwin" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  # bison
  export PATH=/opt/homebrew/opt/bison/bin:$PATH
  # iverilog
  export PATH=/Users/zoupeng/verilog/iverilog/installed/bin:$PATH
  export PATH=/Applications/gtkwave.app/Contents/Resources/bin/:$PATH
  export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
  export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
  # mips
  export PATH="/Applications/Racket v8.2/bin:$PATH"
  export PATH=/opt/homebrew/opt/sqlite3/bin:$PATH
  export GOPATH=$HOME/go
  export PATH=$GOPATH/bin:$PATH
  export HOMEBREW_NO_INSTALL_FROM_API=1
  export PATH="/Users/zoupeng/postgres/pg15/bin:$PATH"
  export LD_LIBRARY_PATH="/Users/zoupeng/postgres/pg15/lib:$LD_LIBRARY_PATH"
  export PGHOME="/Users/zoupeng/postgres/pg15"
  export PGDATA="/Users/zoupeng/postgres/pgdata"
elif [[ `uname` == "Linux" ]]; then
  export CMAKE_BUILD_PARALLEL_LEVEL=32
  export CUDA_HOME=/usr/local/cuda
  export CUDACXX=$CUDA_HOME/bin/nvcc
  export NCCL_LIB_DIR=$CUDA_HOME/lib64
  export NCCL_INCLUDE_DIR=$CUDA_HOME/include
  export PATH=$CUDA_HOME/bin:$PATH
  export CUTLASS_DIR=$HOME/code/cutlass
  export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH
  export LD_LIBRARY_PATH=/usr/local/lib/:$LD_LIBRARY_PATH
  # c++
  export CC=/usr/bin/gcc
  export CXX=/usr/bin/g++
  export PATH=$HOME/.cargo/bin:$PATH
fi

# Created by `pipx` on 2025-01-07 09:33:53
export PATH=$HOME/.local/bin:$PATH
export HF_ENDPOINT=https://hf-mirror.com

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
