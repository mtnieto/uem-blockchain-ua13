export ORDERER_CA=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/uem.com/orderers/orderer0.uem.com/msp/tlscacerts/tlsca.uem.com-cert.pem
export CORE_PEER_LOCALMSPID="org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.uem.com/peers/peer0.org1.uem.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.uem.com/users/Admin@org1.uem.com/msp
export CORE_PEER_ADDRESS=peer0.org1.uem.com:7051
export CHANNEL_NAME=channel1
export CORE_PEER_TLS_ENABLED=true

export CORE_PEER_TLS_CLIENTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.uem.com/users/Admin@org1.uem.com/tls/client.crt
export CORE_PEER_TLS_CLIENTKEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.uem.com/users/Admin@org1.uem.com/tls/client.key
export PATHCC=/opt/gopath/src/github.com/hyperledger/fabric/examples/chaincode/go/fabcar/javascript


# cd $PATH
# GO111MODULE=on go mod vendor
# cd -

peer lifecycle chaincode package chaincode.tar.gz --path $PATHCC --lang node --label fabcar 

peer lifecycle chaincode install chaincode.tar.gz 



