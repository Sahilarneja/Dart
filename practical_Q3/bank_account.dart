import 'dart:math';

class BankAccount {
  String _accountHolderName;
  int _accountNumber;
  double _balance;
  String _accountType;

  // Constructor with required and optional parameters
  BankAccount(this._accountHolderName, {int? accountNumber, double balance = 0.0, String accountType = 'Savings'})
      : _accountNumber = accountNumber ?? Random().nextInt(100000),
        _balance = balance,
        _accountType = accountType;

  String get accountHolderName => _accountHolderName;
  set accountHolderName(String value) => _accountHolderName = value;

  int get accountNumber => _accountNumber;

  double get balance => _balance;
  set balance(double value) => _balance = value;

  String get accountType => _accountType;
  set accountType(String value) => _accountType = value;

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance = _balance+ amount;
      print('Deposit of \$${amount.toString()} successful.');
    } else {
      print('Invalid deposit amount. Please enter a positive amount.');
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrawal of \$${amount.toString()} successful.');
    } else {
      print('Invalid withdrawal amount or insufficient balance.');
    }
  }

  // Method to display account details
  void displayAccountDetails() {
    print('Account Holder: $_accountHolderName');
    print('Account Number: $_accountNumber');
    print('Account Type: $_accountType');
    print('Balance: \$${_balance.toStringAsFixed(2)}');
  }
}
