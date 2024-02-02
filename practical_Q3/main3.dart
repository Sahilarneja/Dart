import 'bank_account.dart';

void main() {
  // Creating a BankAccount instance with required and optional parameters
  var account1 = BankAccount('John Doe');

  // Displaying initial account details
  print('Initial Account Details:');
  account1.displayAccountDetails();

  // Depositing and withdrawing money
  account1.deposit(1000.0);
  account1.withdraw(500.0);

  // Displaying updated account details
  print('\nUpdated Account Details:');
  account1.displayAccountDetails();
}
