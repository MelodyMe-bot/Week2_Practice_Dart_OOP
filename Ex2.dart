class BankAccount {
  String _accountOwner;
  int _accountId;
  double _balance;

  BankAccount({
    required String accountOwner,
    required int accountId,
    required double balance,
  }) : _accountOwner = accountOwner,
       _accountId = accountId,
       _balance = balance;
  String get accountOwner => _accountOwner;
  int get accountId => _accountId;
  double get balance => _balance;

  double withdraw(double amount) {
    if (amount > balance) {
      throw Exception("Insufficient funds!");
    }
    _balance -= amount;
    return _balance;
  }

  double credit(double amount) {
    _balance += amount;

    return _balance;
  }
}

class Bank {
  List<BankAccount> _accounts;
  String _name;
  Bank(this._accounts, this._name);

  List<BankAccount> get accounts => _accounts;
  String get name => _name;

  BankAccount createAccount(int accountId, String accountOwner) {
    bool exists = _accounts.any((acc) => acc.accountId == accountId);
    if (exists) {
      throw Exception("This Account Id already exist!");
    }
    BankAccount newAccount = BankAccount(
      accountOwner: accountOwner,
      accountId: accountId,
      balance: 0,
    );
    _accounts.add(newAccount);
    return newAccount;
  }
}

void main() {
  BankAccount c1 = BankAccount(
    accountOwner: "Thida",
    accountId: 1111,
    balance: 3000,
  );
  print(c1.withdraw(2500));
  BankAccount newAccount = BankAccount(
    accountOwner: "Theara",
    accountId: 1111,
    balance: 0,
  );
  print(newAccount.accountId);
}
