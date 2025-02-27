/* Library Management System
 Create a system to manage books in a library.
 Implement a Book class with properties like title, author, isbn, and isAvailable.
 Implement a Library class with methods:- addBook(Book book): Adds a book to the library.- borrowBook(String isbn): Marks a book as borrowed if available.- returnBook(String isbn): Marks a book as available again.- searchByTitle(String title): Returns books matching the title.
 Ensure that the system correctly updates the book's availability*/


import 'class_book.dart';


void main() {
  Library library = Library();
  library.addBook(Book('The Alchemist', 'Paulo Coelho', '978-0062315007', true));
  library.addBook(Book('The Da Vinci Code', 'Dan Brown', '978-0307474278', true));
  library.addBook(Book('The Great Gatsby', 'F. Scott Fitzgerald', '978-0743273565', true));
  library.addBook(Book('The Catcher in the Rye', 'J.D. Salinger', '978-0316769488', true));

  print(library.books);

  library.borrowBook('978-0062315007');
  print(library.books);

  library.returnBook('978-0062315007');
  print(library.books);

  print(library.searchByTitle('The Alchemist'));
  print(library.searchByTitle('The Great Gatsby'));
}

// Output: