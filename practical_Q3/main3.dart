import 'bank_account.dart';

void main() {
  var account1 = BankAccount('Ram');

  print('Initial Account Details:');
  account1.displayAccountDetails();

  account1.deposit(1000.0);
  account1.withdraw(550.0);

  print('\nUpdated Account Details:');
  account1.displayAccountDetails();
}
