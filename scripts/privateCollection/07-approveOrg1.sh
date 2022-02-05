export ORDERER_CA=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/uem.com/orderers/orderer0.uem.com/msp/tlscacerts/tlsca.uem.com-cert.pem
export CORE_PEER_LOCALMSPID="org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.uem.com/peers/peer0.org1.uem.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.uem.com/users/Admin@org1.uem.com/msp
export CORE_PEER_ADDRESS=peer0.org1.uem.com:7051
export CHANNEL_NAME=channel1
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_TLS_CLIENTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/uem.com/orderers/orderer0.uem.com/tls/server.crt
export CORE_PEER_TLS_CLIENTKEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/uem.com/orderers/orderer0.uem.com/tls/server.key
export CC_PACKAGE_ID="marblesPrivate:cf996a2b5a6dd894f42653984081f86e1bba78d25757e929550ad7044853a97a"
export ORDERER_URL=orderer0.uem.com:7050
export PATHCOLLECTION=/opt/gopath/src/github.com/hyperledger/fabric/examples/chaincode/go/marbles02_private/collections_config.json

peer lifecycle chaincode approveformyorg -o $ORDERER_URL --ordererTLSHostnameOverride orderer0.uem.com  --channelID $CHANNEL_NAME --name marblesprivate --version 1.0  --package-id $CC_PACKAGE_ID --sequence 2 --tls true --cafile $ORDERER_CA --collections-config $PATHCOLLECTION


peer lifecycle chaincode checkcommitreadiness --channelID $CHANNEL_NAME --name marblesprivate --version 1.0 --sequence 2 --tls true --cafile $ORDERER_CA --collections-config $PATHCOLLECTION --output json

