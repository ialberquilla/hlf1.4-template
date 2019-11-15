#!/bin/bash

echo "Creating containers... "
docker-compose -f docker-compose-cli.yaml up -d
echo 
echo "Containers started" 
echo 
docker ps

echo
#Creating channel and join org1
docker exec -it cli ./scripts/channel/createChannel.sh
#Creating channel and join org2
docker exec -e "CORE_PEER_LOCALMSPID=Org2MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp" -e "CORE_PEER_ADDRESS=peer0.org2.example.com:7051" -it cli ./scripts/channel/joinOrg2.sh


