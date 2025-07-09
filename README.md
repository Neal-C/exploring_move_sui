# Exploring Move-sui

https://sui.io/


tried sui 1.51.3-e4c1e8704641

## Notes

- built-in testing framework for both Move and Sui
- tests within source code
- verbose error messaging
- You can create programmable transaction blocks (PTBs) on Sui to perform multiple commands in a single transaction
- Shared versus Owned Objects concept : Objects on Sui can be shared (accessible for reads and writes by any transaction) or owned (accessible for reads and writes by transactions signed by their owner). Think 'onlyOwner' modifier in Solidity. Transactions that use only owned objects benefit from very low latency to finality, because they do not need to go through consensus.
- Sui has a Rust sdk, which includes a Client
- a Move call in Sui is encapsulated in a Sui transaction
- zkLogin ( https://docs.sui.io/concepts/cryptography/zklogin ). Oauth2 login on steroids with zero-knowledge proof. zkLogin is a Sui primitive that provides the ability for you to send transactions from a Sui address using an OAuth credential, without publicly linking the two. uses Groth16
- Sui has sponsored transactions

## Bugs

- it did not list the Sui package on GitHub (Testnet version) as the lone dependency as stated https://docs.sui.io/guides/developer/first-app/write-package
> [dependencies]: Lists the other packages that your package depends on to run. By default, the sui move new command lists the Sui package on GitHub (Testnet version) as the lone dependency.

## Insructions

### With Docker

Requirements : Docker

```bash
git clone https://github.com/Neal-C/exploring_move_sui.git
```

```bash
cd exploring_move_sui
```

```bash
docker build -t neal-c-move-sui:latest .
```

```bash
docker run --name neal-c-move-sui neal-c-move-sui:latest
```

### With local install

Requirements : Rust >= 1.88 

Went with the cargo installation 

```bash
cargo install --locked --git https://github.com/MystenLabs/sui.git --branch testnet sui --features tracing
``` 

```bash
sui --version
```

```bash
git clone https://github.com/Neal-C/exploring_move_sui.git
```

```bash
cd exploring_move_sui
```

```bash
sui move test
```

### Dev setup

LSP support 

```bash
cargo install --git http://github.com/movebit/sui-move-analyzer --branch master sui-move-analyzer
```

```bash
sui-move-analyzer --version
```

## Resources

- https://docs.sui.io/
- https://www.mystenlabs.com/
- https://move-language.github.io/move/
- https://github.com/move-language
- https://github.com/move-language/move-sui
- https://docs.sui.io/concepts/cryptography/zklogin#how-zklogin-works