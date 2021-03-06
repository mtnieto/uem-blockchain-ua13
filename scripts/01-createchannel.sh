ORDERER_CA=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/uem.com/orderers/orderer0.uem.com/msp/tlscacerts/tlsca.uem.com-cert.pem
CORE_PEER_LOCALMSPID="org2MSP"
CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.uem.com/peers/peer0.org2.uem.com/tls/ca.crt
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.uem.com/users/Admin@org2.uem.com/msp
CORE_PEER_ADDRESS=peer0.org2.uem.com:7051
CHANNEL_NAME=channel1
CORE_PEER_TLS_ENABLED=true
ORDERER_SYSCHAN_ID=syschain
CORE_PEER_TLS_CLIENTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/uem.com/users/Admin@uem.com/tls/client.crt
CORE_PEER_TLS_CLIENTKEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/uem.com/users/Admin@uem.com/tls/client.key
#  --clientauth \
#   --certfile "$CORE_PEER_TLS_CLIENTCERT_FILE" \
#   --keyfile "$CORE_PEER_TLS_CLIENTKEY_FILE" \
#   --tls
peer channel create -o orderer0.uem.com:7050 -c $CHANNEL_NAME -f ./channel-artifacts/channel1.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA >&log.txt 
cat log.txt

