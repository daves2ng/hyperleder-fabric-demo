
chmod -R 0755 ./crypto-config
# Delete existing artifacts
rm -rf ./crypto-config
rm genesis.block mychannel.tx
rm -rf ../../channel-artifacts/*

#Generate Crypto artifactes for organizations
/home/daves2ng/fabric-samples/bin/cryptogen generate --config=./crypto-config.yaml --output=./crypto-config/



# System channel
#SYS_CHANNEL="sys-channel"

# channel name defaults to "mychannel"
#CHANNEL_NAME="zonechannel"

# echo $CHANNEL_NAME

# # Generate System Genesis block
# /home/daves2ng/fabric-samples/bin/configtxgen -profile OrdererGenesis -configPath . -channelID $SYS_CHANNEL  -outputBlock ./genesis.block


# # Generate channel configuration block
# /home/daves2ng/fabric-samples/bin/configtxgen -profile BasicChannel -configPath . -outputCreateChannelTx ./mychannel.tx -channelID $CHANNEL_NAME

# echo "#######    Generating anchor peer update for GTBMSP  ##########"
# /home/daves2ng/fabric-samples/bin/configtxgen -profile BasicChannel -configPath . -outputAnchorPeersUpdate ./GTBMSPanchors.tx -channelID $CHANNEL_NAME -asOrg GTBMSP

# echo "#######    Generating anchor peer update for WemaMSP  ##########"
# /home/daves2ng/fabric-samples/bin/configtxgen -profile BasicChannel -configPath . -outputAnchorPeersUpdate ./WemaMSPanchors.tx -channelID $CHANNEL_NAME -asOrg WemaMSP

# echo "#######    Generating anchor peer update for ZenithMSP  ##########"
# /home/daves2ng/fabric-samples/bin/configtxgen -profile BasicChannel -configPath . -outputAnchorPeersUpdate ./ZenithMSPanchors.tx -channelID $CHANNEL_NAME -asOrg ZenithMSP
