ORDERER_CA=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/uem.com/orderers/orderer0.uem.com/msp/tlscacerts/tlsca.uem.com-cert.pem
CORE_PEER_LOCALMSPID="org1MSP"
CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.uem.com/peers/peer0.org1.uem.com/tls/ca.crt
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.uem.com/users/Admin@org1.uem.com/msp
CORE_PEER_ADDRESS=peer0.org1.uem.com:7051
CORE_PEER_ADDRESS2=peer0.org2.uem.com:8051
CORE_PEER_TLS_ROOTCERT_FILE2=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.uem.com/peers/peer0.org2.uem.com/tls/ca.crt

CHANNEL_NAME=channel1
CORE_PEER_TLS_ENABLED=true
CORE_PEER_TLS_CLIENTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/uem.com/orderers/orderer0.uem.com/tls/server.crt
CORE_PEER_TLS_CLIENTKEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/uem.com/orderers/orderer0.uem.com/tls/server.key
export CC_PACKAGE_ID="marblesPrivate:cf996a2b5a6dd894f42653984081f86e1bba78d25757e929550ad7044853a97a"


export MARBLE=$(echo -n "{\"name\":\"prueba\",\"color\":\"blue\",\"size\":35,\"owner\":\"maritere\",\"price\":99}" | base64 | tr -d \\n)



peer chaincode invoke -o orderer0.uem.com:7050  --tls true --cafile $ORDERER_CA -C $CHANNEL_NAME -n marblesprivate --peerAddresses $CORE_PEER_ADDRESS --tlsRootCertFiles $CORE_PEER_TLS_ROOTCERT_FILE -c '{"Args":["InitMarble"]}' --transient "{\"marble\":\"$MARBLE\"}" 
cat log.txt