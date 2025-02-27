/* Create a mixin Logger with a method log(String message) that prints a log message. Apply the mixin
 to a User class that contains name and email properties. Use the log method in the User class to log
 messages like "User created" and "User deleted."*/



import 'dart:math';

mixin Logger {
  void log(String message) {
    print(message);
  }
}

class User with Logger {
  String? name;
  String? email;

  User({this.name, this.email}) {
    this.log("User created");
  }

  void delete() {
  this.log('User deleted');
  }
}

void main() {
  User user = User(name: 'Amir', email: 'email');
  user.delete();
} 
