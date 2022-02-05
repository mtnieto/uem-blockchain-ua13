export ORDERER_CA=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/uem.com/orderers/orderer0.uem.com/msp/tlscacerts/tlsca.uem.com-cert.pem
export CORE_PEER_LOCALMSPID="org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.uem.com/peers/peer0.org1.uem.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.uem.com/users/Admin@org1.uem.com/msp
export CORE_PEER_ADDRESS=peer0.org1.uem.com:7051
export CHANNEL_NAME=channel1
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_TLS_CLIENTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/uem.com/orderers/orderer0.uem.com/tls/server.crt
export CORE_PEER_TLS_CLIENTKEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/uem.com/orderers/orderer0.uem.com/tls/server.key
export CC_PACKAGE_ID="fabcar:0fa0a59359d86aa612ece0e0399ed90c882c8a1ff12fdf5b84587e031bbf6bb2"
export ORDERER_URL=orderer0.uem.com:7050

peer lifecycle chaincode approveformyorg -o $ORDERER_URL --ordererTLSHostnameOverride orderer0.uem.com  --channelID $CHANNEL_NAME --name fabcar --version 1.0 --init-required --package-id $CC_PACKAGE_ID --sequence 1 --tls true --cafile $ORDERER_CA 


peer lifecycle chaincode checkcommitreadiness --channelID $CHANNEL_NAME --name fabcar --version 1.0 --init-required --sequence 1 --tls true --cafile $ORDERER_CA --output json

