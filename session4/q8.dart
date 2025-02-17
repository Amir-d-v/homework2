/*Topic: Classes, Objects, Encapsulation
 Exercise: Define a class Product with properties like name, price, and quantity. Include methods to update the quantity
 and calculate the total price for a given quantity. In the main function, create a Product object, update the quantity, and
 print the total price*/
import 'product.dart';


void main() {
  Product product = Product('Laptop', 1000, 5);
  product.updateQuantity(10);
  double total = product.totalPrice();
  print('Total Price: \$  $total');
}