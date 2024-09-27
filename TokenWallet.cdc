access(all) contract TokenWallet {

    access(all) var balances: @{Address: UFix64}

    init() {
        self.balances = {}
    }

    access(all) fun createWallet(owner: Address) {
        if self.balances[owner] != nil {
            panic("Wallet already exists for this address!")
        }
        self.balances[owner] = 0.0
    }

    access(all) fun deposit(amount: UFix64, owner: Address) {
        if self.balances[owner] == nil {
            panic("No wallet found for this address!")
        }
        self.balances[owner] = self.balances[owner]! + amount
    }

    access(all) fun withdraw(amount: UFix64, owner: Address) {
        if self.balances[owner] == nil {
            panic("No wallet found for this address!")
        }
        if self.balances[owner]! < amount {
            panic("Insufficient funds!")
        }
        self.balances[owner] = self.balances[owner]! - amount
    }

    access(all) fun getBalance(owner: Address): UFix64 {
        return self.balances[owner] ?? 0.0
    }
}