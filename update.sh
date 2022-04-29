#!/usr/bin/env bash

# Rust
rustup update

# Cargo
cargo install-update -a

# Nvm (nvm will be updated by git)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Node
export NVM_DIR=$HOME/.nvm;
. $NVM_DIR/nvm.sh;

nvm install node --reinstall-packages-from=node
nvm install --lts --reinstall-packages-from=default --latest-npm
nvm use --lts
npm update --global

# Solana
solana-install update
