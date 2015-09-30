#!/usr/bin/env bash

source /usr/local/rvm/environments/ruby-2.2.1
source /home/ubuntu/.nvm/nvm.sh

cd /home/ubuntu/workspace/makzan.net

middleman build

/home/ubuntu/.nvm/v0.10.35/bin/surge /home/ubuntu/workspace/makzan.net/build