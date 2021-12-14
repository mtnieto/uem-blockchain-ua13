ORDERER_CA=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/uem.com/orderers/orderer0.uem.com/msp/tlscacerts/tlsca.uem.com-cert.pem
CORE_PEER_LOCALMSPID="org2MSP"
CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.uem.com/peers/peer0.org2.uem.com/tls/ca.crt
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.uem.com/users/Admin@org2.uem.com/msp
CORE_PEER_ADDRESS=peer0.org2.uem.com:8051
CHANNEL_NAME=channel1
CORE_PEER_TLS_ENABLED=true
ORDERER_URL=orderer0.uem.com:7050
CORE_PEER_TLS_CLIENTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/uem.com/orderers/orderer0.uem.com/tls/server.crt
CORE_PEER_TLS_CLIENTKEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/uem.com/orderers/orderer0.uem.com/tls/server.key
export CC_PACKAGE_ID="fabcar:842748f236c202ec172079d6780fc49e6f938d63c85359ee5fa6e62ee5f6bac6"

peer lifecycle chaincode approveformyorg -o $ORDERER_URL --ordererTLSHostnameOverride orderer0.uem.com  --channelID $CHANNEL_NAME --name fabcar --version 1.0 --init-required --package-id $CC_PACKAGE_ID --sequence 1 --tls true --cafile $ORDERER_CA >&log.txt

cat log.txt

peer lifecycle chaincode checkcommitreadiness --channelID $CHANNEL_NAME --name fabcar --version 1.0 --init-required --sequence 1 --tls true --cafile $ORDERER_CA --output json

