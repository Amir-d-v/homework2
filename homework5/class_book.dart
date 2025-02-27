class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book(this.title, this.author, this.isbn, this.isAvailable);
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  void borrowBook(String isbn) {
    for (int i = 0; i < books.length; i++) {
      if (books[i].isbn == isbn) {
        books[i].isAvailable = false;
        break;
      }
    }
  }

  void returnBook(String isbn) {
    for (int i = 0; i < books.length; i++) {
      if (books[i].isbn == isbn) {
        books[i].isAvailable = true;
        break;
      }
    }
  }

  List<Book> searchByTitle(String title) {
    List<Book> result = [];
    for (int i = 0; i < books.length; i++) {
      if (books[i].title == title) {
        result.add(books[i]);
      }
    }
    return result;
  }
}

