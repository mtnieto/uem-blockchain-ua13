export ORDERER_CA=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/uem.com/orderers/orderer0.uem.com/msp/tlscacerts/tlsca.uem.com-cert.pem
export CORE_PEER_LOCALMSPID="org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.uem.com/peers/peer0.org1.uem.com/tls/ca.crt
export CORE_PEER_TLS_ROOTCERT_FILE2=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.uem.com/peers/peer0.org2.uem.com/tls/ca.crt

export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.uem.com/users/Admin@org1.uem.com/msp
export CORE_PEER_ADDRESS=peer0.org1.uem.com:7051
export CHANNEL_NAME=channel1
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_TLS_CLIENTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/uem.com/orderers/orderer0.uem.com/tls/server.crt
export CORE_PEER_TLS_CLIENTKEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/uem.com/orderers/orderer0.uem.com/tls/server.key
export ORDERER_URL=orderer0.uem.com:7050
export CC_PACKAGE_ID="marblesPrivate:baecdbc258e39763a5785ed08e971ded10d90e90a123b86d2383452277a2428e"
export PATHCOLLECTION=/opt/gopath/src/github.com/hyperledger/fabric/examples/chaincode/go/marbles02_private/collections_config.json



peer lifecycle chaincode commit -o orderer0.uem.com:7050 --channelID $CHANNEL_NAME --name marblesprivate --version 1.0 --sequence 1  --tls true --cafile $ORDERER_CA --peerAddresses peer0.org1.uem.com:7051 --tlsRootCertFiles $CORE_PEER_TLS_ROOTCERT_FILE  --peerAddresses peer0.org2.uem.com:8051 --tlsRootCertFiles $CORE_PEER_TLS_ROOTCERT_FILE2 --collections-config $PATHCOLLECTION

cat log.txt
