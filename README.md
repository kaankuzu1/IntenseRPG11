<div align="center">

```
 ___       _                       ____  ____   ____ 
|_ _|_ __ | |_ ___ _ __  ___  ___|  _ \|  _ \ / ___|
 | || '_ \| __/ _ \ '_ \/ __|/ _ \ |_) | |_) | |  _ 
 | || | | | ||  __/ | | \__ \  __/  _ <|  __/| |_| |
|___|_| |_|\__\___|_| |_|___/\___|_| \_\_|    \____|
```

### On-Chain RPG Game Backend

[![Sui](https://img.shields.io/badge/Sui-4DA2FF?style=flat-square&logo=sui&logoColor=white)](https://sui.io/)
[![Move](https://img.shields.io/badge/Move_Lang-purple?style=flat-square)]()

</div>

---

Smart contract backend for **IntenseRPG** — an on-chain RPG game built on the Sui blockchain using the Move programming language.

## Architecture

```
┌─────────────────────────────────┐
│         Game Client             │
└───────────────┬─────────────────┘
                │
                ▼
┌─────────────────────────────────┐
│        Sui Blockchain           │
│                                 │
│  ┌───────────┐  ┌───────────┐  │
│  │  Player   │  │  Battle   │  │
│  │  Module   │  │  Module   │  │
│  ├───────────┤  ├───────────┤  │
│  │ Inventory │  │ Combat    │  │
│  │ Stats     │  │ Rewards   │  │
│  │ Progress  │  │ Loot      │  │
│  └───────────┘  └───────────┘  │
│                                 │
│  ┌───────────┐  ┌───────────┐  │
│  │  Item     │  │  World    │  │
│  │  Module   │  │  Module   │  │
│  ├───────────┤  ├───────────┤  │
│  │ Weapons   │  │ Zones     │  │
│  │ Armor     │  │ Quests    │  │
│  │ Crafting  │  │ NPCs      │  │
│  └───────────┘  └───────────┘  │
└─────────────────────────────────┘
```

## Tech Stack

| Component | Technology |
|-----------|-----------|
| **Language** | Move |
| **Blockchain** | Sui Network |
| **Testing** | Sui Move Test Framework |

## Getting Started

```bash
# Clone
git clone https://github.com/kaankuzu1/IntenseRPG11.git
cd IntenseRPG11

# Run tests
sui move test
```

## License

MIT
