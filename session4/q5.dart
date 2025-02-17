/*Topic: Conditional statements, If-Else, Logical operators
 Exercise: Write a program that checks the role of a user (e.g., admin, user, guest). Print 'Welcome Admin' if the role is
 admin, 'Welcome User' if it's user, and 'Welcome Guest' otherwise*/


void main() {
  String role = 'admin';
  if (role == 'admin') {
    print('Welcome Admin');
  } else if (role == 'user') {
    print('Welcome User');
  } else {
    print('Welcome Guest');
  }
}

