ORDERER_CA=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/uem.com/orderers/orderer0.uem.com/msp/tlscacerts/tlsca.uem.com-cert.pem
CORE_PEER_LOCALMSPID="org1MSP"
CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.uem.com/peers/peer0.org1.uem.com/tls/ca.crt
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.uem.com/users/Admin@org1.uem.com/msp
CORE_PEER_ADDRESS=peer0.org1.uem.com:7051
CHANNEL_NAME=channel1
CORE_PEER_TLS_ENABLED=true

CORE_PEER_TLS_CLIENTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.uem.com/users/Admin@org1.uem.com/tls/client.crt
CORE_PEER_TLS_CLIENTKEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.uem.com/users/Admin@org1.uem.com/tls/client.key

cd /opt/gopath/src/github.com/hyperledger/fabric/examples/chaincode/go/fabcar
GO111MODULE=on go mod vendor
cd -

peer lifecycle chaincode package chaincode2.tar.gz --path /opt/gopath/src/github.com/hyperledger/fabric/examples/chaincode/go/fabcar --lang golang --label fabcar >&log.txt
cat log.txt



peer lifecycle chaincode install chaincode2.tar.gz >&log.txt

cat log.txt



#cd /opt/gopath/src/github.com/hyperledger/fabric/examples/chaincode/go/marbles02/node


peer lifecycle chaincode package fabcar.tar.gz --path /opt/gopath/src/github.com/hyperledger/fabric/examples/chaincode/go/fabcar --lang golang --label fabcar >&log.txt
