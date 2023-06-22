# proxy
export http_proxy=http://127.0.0.1:7890
export https_proxy=$http_proxy
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
# zsh color
export CLICOLOR=1

if [[ `uname` == "Darwin" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  # bison
  export PATH=/opt/homebrew/opt/bison/bin:$PATH
  # iverilog
  export PATH=/Users/zoupeng/verilog/iverilog/installed/bin:$PATH
  export PATH=/Applications/gtkwave.app/Contents/Resources/bin/:$PATH
  export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
  # mips
  export PATH=/opt/toolchain/mips-gcc-4.8.1/bin:$PATH
  export PATH="/Applications/Racket v8.2/bin:$PATH"
  export PATH=/opt/homebrew/opt/sqlite3/bin:$PATH
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  export GOPATH=$HOME/go
  export PATH=$GOPATH/bin:$PATH
elif [[ `uname` == "Linux" ]]; then
  export CUDA_HOME=/usr/local/cuda
  export PATH=/usr/local/cuda/bin:$PATH
  export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
fi
