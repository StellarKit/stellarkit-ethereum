#!/bin/sh

if [ $BUILD_FROM_SRC -ne 0 ]
then
  apk add --update git make gcc musl-dev linux-headers ca-certificates
  git clone --depth 1 --branch release/1.7 https://github.com/ethereum/go-ethereum
  cd /go/go-ethereum
  make all

  cp go/go-ethereum/build/bin/geth /usr/local/bin
else
  apk update
  apk add geth

  # apk add curl gnupg

  # binary doesn't work on Alpine, so we either switch to Ubuntu, or just use apk geth
  # ETHEREUM_URL=https://gethstore.blob.core.windows.net/builds/
  # ETHEREUM_FILE_BASE=geth-linux-amd64-1.7.3-4bb3c89d
  # ETHEREUM_FILE_NAME=$ETHEREUM_FILE_BASE.tar.gz
  # ETHEREUM_BINARY_URL=$ETHEREUM_URL/$ETHEREUM_FILE_NAME
  # ETHEREUM_ASC_URL=$ETHEREUM_URL/$ETHEREUM_FILE_NAME.asc
  #
  # # download files
  # curl $ETHEREUM_BINARY_URL -o $ETHEREUM_FILE_NAME
  # curl $ETHEREUM_ASC_URL -o $ETHEREUM_FILE_NAME.asc
  #
  # # check signature
  # gpg --import /gpgKey.key
  # # gpg --recv-keys F9585DE6 C2FF8BBF 9BA28146 7B9E2481 D2A67EAC
  #
  # # result is in 'result code' at $?
  # gpg --verify geth-linux-amd64-1.7.3-4bb3c89d.tar.gz.asc
  # result=$?
  #
  # if [ $result -ne 0 ]
  # then
  #   echo "signature failed"
  #   exit 1;
  # fi

  # tar zxvf $ETHEREUM_FILE_NAME
  # cp $ETHEREUM_FILE_BASE/geth /usr/local/bin

  echo $(which geth)
fi

echo "\nDone installing stellar-bitcoin...\n"
