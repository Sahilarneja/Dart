// You are building a game where players can choose between different character classes, such as
// Warrior, Mage, and Rogue. Each character class has unique abilities and attributes. Implement the
// character classes using inheritance, with a base class Character and subclasses Warrior, Mage, and
// Rogue. Ensure each subclass has its own set of abilities and characteristics.
// Create a Logger mixin that provides logging functionality to classes in your application. The Logger
// mixin should include methods for logging debug, info, warning, and error messages. Implement this
// mixin in various classes throughout your application to enable logging functionality wherever
// needed.
mixin Logger {
  void logDebug(String message) {
    print('DEBUG: $message');
  }

  void logInfo(String message) {
    print('INFO: $message');
  }

  void logWarning(String message) {
    print('WARNING: $message');
  }

  void logError(String message) {
    print('ERROR: $message');
  }
}

class Character {
  late String name;
  late int health;
  late int mana;

  Character(this.name, this.health, this.mana);
}

class Warrior extends Character with Logger {
  late int strength;

  Warrior(String name, int health, int mana, this.strength) : super(name, health, mana);

  void attack() {
    logInfo('$name attacks with strength $strength');
  }
}

class Mage extends Character with Logger {
  late int intelligence;

  Mage(String name, int health, int mana, this.intelligence) : super(name, health, mana);

  void castSpell() {
    logInfo('$name casts a spell with intelligence $intelligence');
  }
}

class Rogue extends Character with Logger {
  late int agility;

  Rogue(String name, int health, int mana, this.agility) : super(name, health, mana);

  void sneakAttack() {
    logInfo('$name performs a sneak attack with agility $agility');
  }
}

void main() {
  var warrior = Warrior('Conan', 100, 50, 20);
  warrior.attack();

  var mage = Mage('Gandalf', 80, 100, 30);
  mage.castSpell();

  var rogue = Rogue('Legolas', 90, 60, 25);
  rogue.sneakAttack();
}
