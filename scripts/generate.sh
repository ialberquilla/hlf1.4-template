#!/bin/bash

echo "Generating cryto material for peers..."
../bin/cryptogen generate --config=./crypto-config.yaml
export FABRIC_CFG_PATH=$PWD

[ -d crypto-config ] || mkdir crypto-config

echo "Generating channel artifacts and genesis block..."
../bin/configtxgen -profile TwoOrgsOrdererGenesis -outputBlock ./channel-artifacts/genesis.block
../bin/configtxgen -profile TwoOrgsChannel -outputCreateChannelTx ./channel-artifacts/channel.tx -channelID mychannel
