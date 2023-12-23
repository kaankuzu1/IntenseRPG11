module intense_rpg::rpg {


    use sui::object::{Self, UID};
    use sui::transfer;
    use sui::tx_context::{Self, TxContext};

    struct Sword has key, store {
        id: UID,
        magic: u64,
        strength: u64,
    }

    struct Shield has key, store {
        id: UID,
        defense: u64,
        strength: u64,
    }

    struct Armor has key, store {
        id: UID,
        defense: u64,
    }

    fun init(ctx: &mut TxContext) {
        let admin = Shield {
            id: object::new(ctx),
            defense: 10,
            strength: 15,
        };
        transfer::transfer(admin, tx_context::sender(ctx));
    }

    public fun magic(self: &Sword): u64 {
        self.magic
    }

    public fun strength(self: &Sword): u64 {
        self.strength
    }

    public fun defense(self: &Shield, arm: &Armor): (u64, u64) {
        (self.defense, arm.defense)
    }
    #[test]
    public fun test_sword_create() {

        let ctx = tx_context::dummy();

        let sword = Sword {
            id: object::new(&mut ctx),
            magic: 42,
            strength: 7,
        };

        assert!(magic(&sword) == 42 && strength(&sword) == 7, 1);
    }
}