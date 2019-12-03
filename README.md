# hlf1.4-template
Hyperledger fabric template for create new networks. Created with two organizations and one channel in Hyperledger Fabric 1.4.

# Installation instructions

1. Install Hyperledger fabric dependencies:
https://hyperledger-fabric.readthedocs.io/en/release-1.4/prereqs.html

2. Donwload fabric binaries and samples:
`curl -sSL http://bit.ly/2ysbOFE | bash -s 1.4.3`

3. Go to fabric samples:
`cd fabric-samples`

4. Download the template:
`git clone https://github.com/ialberquilla/hlf1.4-template.git`

5. Go to the template
`cd hlf1.4-template`

# Start the network
1. Generate the crypto material
`./scripts/generate.sh`

2. Start peers
`./scripts/start.sh`

# Stop the network
`./scripts/stop.sh`
