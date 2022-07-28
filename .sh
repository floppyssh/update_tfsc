#!/bin/bash

pkill -9 tfsc

cd $HOME/tfsc/
wget -O $HOME/tfsc/tfsc https://fastcdn.uscloudmedia.com/transformers/test/ttfsc_v0.1.2_4d8f89b_devnet

chmod +x $HOME/tfsc/tfsc

tmux new-session -d -s tfsc 'cd $HOME/tfsc/ && $HOME/tfsc/tfsc -m'
