    ORDERER_CA=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/uem.com/orderers/orderer0.uem.com/msp/tlscacerts/tlsca.uem.com-cert.pem
    CORE_PEER_LOCALMSPID="org1MSP"
    CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.uem.com/peers/peer0.org1.uem.com/tls/ca.crt
    CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.uem.com/users/Admin@org1.uem.com/msp
    CORE_PEER_ADDRESS=peer0.org1.uem.com:7051
    CHANNEL_NAME=channel1
    CORE_PEER_TLS_ENABLED=true
    CORE_PEER_TLS_CLIENTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/uem.com/orderers/orderer0.uem.com/tls/server.crt
    CORE_PEER_TLS_CLIENTKEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/uem.com/orderers/orderer0.uem.com/tls/server.key

peer channel join -b $CHANNEL_NAME.block --tls --clientauth --certfile $CORE_PEER_TLS_CLIENTCERT_FILE --keyfile $CORE_PEER_TLS_CLIENTKEY_FILE >&log.txt 
cat log.txt 
