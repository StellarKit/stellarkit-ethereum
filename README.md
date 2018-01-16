## Stellar Ethereum  

### The simplest and cleanest Docker image for running ethereum

Build and run:
```
docker-compose build
docker-compose up -d
```

Defaults to testnet.

Creates a folder 'stellar' in your home folder.  Everything is stored there, delete it to reset.

Edit docker-compose.yml for mainnet

Pull requests welcome!

More details here: https://hub.docker.com/r/ethereum/client-go/

connect to testnet client
```
geth attach ipc://${HOME}/.ethereum/testnet/geth.ipc
```
