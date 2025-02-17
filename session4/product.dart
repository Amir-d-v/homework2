class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  void updateQuantity(int newQuantity) {
    quantity = newQuantity;
  }

  double totalPrice() {
    return price * quantity;
  }
}
