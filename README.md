## Ethereum for stellar

docker-compose up -d

More details here: https://hub.docker.com/r/ethereum/client-go/

--rpc Enable the HTTP-RPC server
--rpcaddr HTTP-RPC server listening interface (default: "localhost")
--rpcport HTTP-RPC server listening port (default: 8545)
--rpcapi API's offered over the HTTP-RPC interface (default: "eth,net,web3")
--rpccorsdomain Comma separated list of domains from which to accept cross origin requests (browser enforced)
--ws Enable the WS-RPC server
--wsaddr WS-RPC server listening interface (default: "localhost")
--wsport WS-RPC server listening port (default: 8546)
--wsapi API's offered over the WS-RPC interface (default: "eth,net,web3")
--wsorigins Origins from which to accept websockets requests
--ipcdisable Disable the IPC-RPC server
--ipcapi API's offered over the IPC-RPC interface (default: "admin,debug,eth,miner,net,personal,shh,txpool,web3")
--ipcpath Filename for IPC socket/pipe within the datadir (explicit paths escape it)

geth attach ipc://${HOME}/.ethereum/testnet/geth.ipc
