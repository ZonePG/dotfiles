if [[ `uname` == "Darwin" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  # proxy
  export http_proxy=http://127.0.0.1:7890
  export https_proxy=$http_proxy
  # bison
  export PATH=/opt/homebrew/opt/bison/bin:$PATH
  # iverilog
  export PATH=/Users/zoupeng/verilog/iverilog/installed/bin:$PATH
  export PATH=/Applications/gtkwave.app/Contents/Resources/bin/:$PATH

  # for taichi, comment select one
  # export PATH=/opt/homebrew/opt/llvm/bin:$PATH
  export PATH=/opt/toolchain/llvm-10.0.0-m1-for-taichi/bin:$PATH

  export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

  # mips
  export PATH=/opt/toolchain/mips-gcc-4.8.1/bin:$PATH
  # qemu
  # export PATH=/opt/qemu/build:$PATH
  # export PATH=/opt/qemu/build/riscv64-softmmu:$PATH
  # export PATH=/opt/qemu/build/riscv32-softmmu:$PATH
  export PATH=/opt/qemu-5.1.0/build/:$PATH
  export PATH=/opt/qemu-5.1.0/build/riscv64-softmmu:$PATH
  export PATH=/opt/qemu-5.1.0/build/riscv32-softmmu:$PATH
  export PATH="/Applications/Racket v8.2/bin:$PATH"
  export PATH=/opt/homebrew/opt/sqlite3/bin:$PATH
elif [[ `uname` == "Linux" ]]; then
  export windows_host=`cat /etc/resolv.conf|grep nameserver|awk '{print $2}'`
  export ALL_PROXY=socks5://$windows_host:10808
  export HTTP_PROXY=$ALL_PROXY
  export http_proxy=$ALL_PROXY
  export HTTPS_PROXY=$ALL_PROXY
  export https_proxy=$ALL_PROXY
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

# zsh color
export CLICOLOR=1

export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
