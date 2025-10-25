# Farm Signals - Decentralized Agricultural Forward Contracts on Monad

## Problem Statement
Farmers worldwide face severe challenges with unpredictable crop prices and volatile markets. They lack reliable, transparent mechanisms to lock prices before harvest, making financial planning difficult and increasing exposure to market risks. Traditional intermediaries create delays, opacity, and often unfair pricing, further compounding farmers’ uncertainty.

## Our Solution
Farm Signals is a decentralized application built on the high-performance Monad blockchain that empowers farmers through transparent, immutable, and on-chain forward contracts. Farmers create contracts with fixed crop, quantity, price, and delivery date—all stored securely on Monad’s EVM-compatible network.

Monad’s cutting-edge infrastructure with a throughput of 10,000 transactions per second and 800ms transaction finality makes real-time, cost-effective contract creation a reality. This scalability and speed are essential to enable responsive price locking and market signal propagation for farmers.

## Technical Implementation Flow
- **Smart Contracts:** Developed a Solidity FarmContract handling contract creation, retrieval, and event emission for downstream analytics.
- **Monad Integration:** Deployed on Monad’s Testnet (Chain ID: 10143), utilizing its fast finality and low gas fees to provide a seamless UX.
- **Frontend:** Next.js app with MetaMask & Wagmi integration facilitating live, interactive blockchain transactions.
- **On-Chain Transparency:** Every forward contract is permanently logged on Monad, viewable via Monad Explorer, ensuring trust and auditability.
- **Transaction Management:** Users initiate createContract transactions, instantly updating contractCount and making contracts queryable.

## Use Case & Impact
Farmers gain price certainty and reduce market risk by locking prices ahead of time. Buyers access transparent market data and contract status. The ecosystem fosters trust, liquidity, and data-driven pricing intelligence, unlocking a fairer agricultural marketplace.

## Planned Features (Out of Scope for Current Version)
- Automated escrow & settlement on contract fulfillment
- Multi-party contract negotiation & matching
- Oracle integration for real-world price feeds
- Analytics dashboards & mobile support for broader adoption

## Why Monad?
Monad’s blazing transaction speeds and near-instant finality drastically improve UX and reliability compared to legacy blockchains. Its EVM compatibility enabled smooth developer adoption and integration with existing tooling. Leveraging Monad elevated our project’s viability and scalability, uniquely positioning Farm Signals as a next-gen solution for agricultural commerce.

## Getting Started

### Prerequisites
- Node.js v18+
- Yarn
- MetaMask wallet configured for Monad Testnet (Chain ID: 10143)

### Install dependencies




# 🏗 Scaffold-ETH 2

<h4 align="center">
  <a href="https://docs.scaffoldeth.io">Documentation</a> |
  <a href="https://scaffoldeth.io">Website</a>
</h4>

🧪 An open-source, up-to-date toolkit for building decentralized applications (dapps) on the Ethereum blockchain. It's designed to make it easier for developers to create and deploy smart contracts and build user interfaces that interact with those contracts.

⚙️ Built using NextJS, RainbowKit, Hardhat, Wagmi, Viem, and Typescript.

- ✅ **Contract Hot Reload**: Your frontend auto-adapts to your smart contract as you edit it.
- 🪝 **[Custom hooks](https://docs.scaffoldeth.io/hooks/)**: Collection of React hooks wrapper around [wagmi](https://wagmi.sh/) to simplify interactions with smart contracts with typescript autocompletion.
- 🧱 [**Components**](https://docs.scaffoldeth.io/components/): Collection of common web3 components to quickly build your frontend.
- 🔥 **Burner Wallet & Local Faucet**: Quickly test your application with a burner wallet and local faucet.
- 🔐 **Integration with Wallet Providers**: Connect to different wallet providers and interact with the Ethereum network.

![Debug Contracts tab](https://github.com/scaffold-eth/scaffold-eth-2/assets/55535804/b237af0c-5027-4849-a5c1-2e31495cccb1)

## Requirements

Before you begin, you need to install the following tools:

- [Node (>= v20.18.3)](https://nodejs.org/en/download/)
- Yarn ([v1](https://classic.yarnpkg.com/en/docs/install/) or [v2+](https://yarnpkg.com/getting-started/install))
- [Git](https://git-scm.com/downloads)

## Quickstart

To get started with Scaffold-ETH 2, follow the steps below:

1. Install dependencies if it was skipped in CLI:

```
cd my-dapp-example
yarn install
```

2. Run a local network in the first terminal:

```
yarn chain
```

This command starts a local Ethereum network using Hardhat. The network runs on your local machine and can be used for testing and development. You can customize the network configuration in `packages/hardhat/hardhat.config.ts`.

3. On a second terminal, deploy the test contract:

```
yarn deploy
```

This command deploys a test smart contract to the local network. The contract is located in `packages/hardhat/contracts` and can be modified to suit your needs. The `yarn deploy` command uses the deploy script located in `packages/hardhat/deploy` to deploy the contract to the network. You can also customize the deploy script.

4. On a third terminal, start your NextJS app:

```
yarn start
```

Visit your app on: `http://localhost:3000`. You can interact with your smart contract using the `Debug Contracts` page. You can tweak the app config in `packages/nextjs/scaffold.config.ts`.

Run smart contract test with `yarn hardhat:test`

- Edit your smart contracts in `packages/hardhat/contracts`
- Edit your frontend homepage at `packages/nextjs/app/page.tsx`. For guidance on [routing](https://nextjs.org/docs/app/building-your-application/routing/defining-routes) and configuring [pages/layouts](https://nextjs.org/docs/app/building-your-application/routing/pages-and-layouts) checkout the Next.js documentation.
- Edit your deployment scripts in `packages/hardhat/deploy`


## Documentation

Visit our [docs](https://docs.scaffoldeth.io) to learn how to start building with Scaffold-ETH 2.

To know more about its features, check out our [website](https://scaffoldeth.io).

## Contributing to Scaffold-ETH 2

We welcome contributions to Scaffold-ETH 2!

Please see [CONTRIBUTING.MD](https://github.com/scaffold-eth/scaffold-eth-2/blob/main/CONTRIBUTING.md) for more information and guidelines for contributing to Scaffold-ETH 2.
