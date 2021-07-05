eval "$(/opt/homebrew/bin/brew shellenv)"

# proxy
export http_proxy=http://127.0.0.1:7890
export https_proxy=$http_proxy

# bison
export PATH=/opt/homebrew/opt/bison/bin:$PATH

# iverilog
export PATH=/Users/zoupeng/verilog/iverilog/installed/bin:$PATH

export PATH=/Applications/gtkwave.app/Contents/Resources/bin/:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

export PATH=/opt/homebrew/opt/llvm/bin:$PATH
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

# mips
export PATH=/opt/toolchain/mips-gcc-4.8.1/bin:$PATH

# zsh color
export CLICOLOR=1

# qemu
# export PATH=/opt/qemu/build:$PATH
# export PATH=/opt/qemu/build/riscv64-softmmu:$PATH
# export PATH=/opt/qemu/build/riscv32-softmmu:$PATH
export PATH=/opt/qemu-5.1.0/build/:$PATH
export PATH=/opt/qemu-5.1.0/build/riscv64-softmmu:$PATH
export PATH=/opt/qemu-5.1.0/build/riscv32-softmmu:$PATH
