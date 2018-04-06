## StellarKit Ethereum

### The simplest and cleanest Docker image for running ethereum

Build and run:

    docker-compose build
    docker-compose up -d

Defaults to testnet.

Creates a folder 'stellar' in your home folder.  Everything is stored there, delete it to reset.

Edit docker-compose.yml for mainnet

Pull requests welcome!

More details here: <https://hub.docker.com/r/ethereum/client-go/>

connect to testnet client

    geth attach ipc://${HOME}/.ethereum/testnet/geth.ipc

Disclaimer: We are not affiliated with, or sponsored or endorsed by, the Stellar Development Foundation.

### Donations

If you like the code, a donation would be appreciated. Even a single XLM!

Click here for the [`donation page`](https://stellarkit.io/#/donate). Nano support!

    XLM: GBJC6AF4I5FUTYMG4CXC3V2NYMIQANBRB4UQYY3M2RRZCXCNLFR7TN7J
