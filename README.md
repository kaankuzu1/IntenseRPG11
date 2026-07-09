# IntenseRPG

A small Sui Move experiment: on-chain RPG items as owned objects. I wrote this while learning Move and the Sui object model.

## What it contains

One module, `intense_rpg::rpg` in [sources/rpg.move](sources/rpg.move):

- Three item types defined as Sui objects with `key` and `store`: `Sword` (magic, strength), `Shield` (defense, strength) and `Armor` (defense)
- An `init` function that mints a starter Shield and transfers it to the publisher
- Getter functions for reading item stats, including one that reads a Shield and an Armor together

The interesting part, coming from a typical backend background, is Sui's ownership model: every item is a distinct object with its own ID that lives in a wallet, not a row in some contract's storage.

## Building

With the [Sui CLI](https://docs.sui.io/guides/developer/getting-started/sui-install) installed:

```bash
sui move build
```

## Publishing

```bash
sui client publish
```

On publish, `init` runs once and the deployer receives the starter Shield object.
