### 🖥️ Use Truffle with Ganache UI

Ganache also comes with a UI application (Desktop app) which runs on port 7545 by default.

### 1. Download Ganache UI
Download from: 

### 2. Initialize a Truffle Project

Navigate to your project folder and run:

```bash
truffle init
```

This creates the following basic structure:

```bash
contracts/
migrations/
test/
truffle-config.js
```

### 3. Configure truffle-config.js for Ganache UI

Open truffle-config.js and locate the networks section. Modify the development network settings like this:

```bash
networks: {
  development: {
    host: "127.0.0.1",
    port: 7545,      // Port Ganache UI runs on
    network_id: "*"  // Match any network id
  }
}
```

### 4. Compile & Migrate
Compile your smart contracts:

```bash
truffle compile
```

Deploy contracts to Ganache UI blockchain:

```bash
truffle migrate
```

You can now build, compile, and test smart contracts locally using either Ganache CLI (port 8545) or Ganache UI (port 7545).
