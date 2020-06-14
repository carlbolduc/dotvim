#!/bin/sh

rm -rf pack ftdetect

mkdir -p pack/rakr/start
git clone https://github.com/rakr/vim-one pack/rakr/start/vim-one

mkdir -p pack/yuezk/start
git clone https://github.com/yuezk/vim-js pack/yuezk/start/vim-js

mkdir -p pack/MaxMEllon/start
git clone https://github.com/MaxMEllon/vim-jsx-pretty pack/MaxMEllon/start/vim-jsx-pretty

mkdir -p pack/tpope/start
git clone https://tpope.io/vim/fugitive.git pack/tpope/start/fugitive
#vim -u NONE -c "helptags pack/tpope/start/fugitive/doc" -c q
git clone https://github.com/tpope/vim-vinegar.git pack/tpope/start/vim-vinegar
git clone https://github.com/tpope/vim-surround pack/tpope/start/vim-surround

mkdir -p pack/mileszs/start
git clone https://github.com/mileszs/ack.vim  pack/mileszs/start/ack

mkdir -p pack/junegunn/start
git clone https://github.com/junegunn/fzf.vim pack/junegunn/start/fzf

mkdir -p pack/junegunn/goyo
git clone https://github.com/junegunn/goyo.vim pack/junegunn/start/goyo

mkdir -p pack/ycm-core/start
git clone https://github.com/ycm-core/YouCompleteMe pack/ycm-core/start/YouCompleteMe
cd  pack/ycm-core/start/YouCompleteMe
git submodule update --init --recursive
python3 install.py --java-completer --ts-completer
cd ../../../../
