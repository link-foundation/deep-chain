#!/bin/sh

ulimit -n 4096 &

export DAEMON_LOG_BUFFER_SIZE=700

# Start deepchain process
#// TODO with Cosmovisor v1.x add run command (cosmovisor run)
/usr/local/bin/deepchain start --compute-gpu=false --search-api=true --home /root/.deepchain
