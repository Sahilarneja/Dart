import 'book.dart';

class Library {
  Set<Book> _books = {};

  void addBook(Book book) {
    if (!_books.contains(book)) {
      _books.add(book);
      print('Book added: $book');
    } else {
      print('Error: Book already exists in the library.');
    }
  }

  void removeBook(Book book) {
    _books.remove(book);
    print('Book removed: $book');
  }

  List<Book> searchBooks({String? title, String? author}) {
    return _books.where((book) {
      if (title != null && author != null) {
        return book.title.toLowerCase().contains(title.toLowerCase()) ||
            book.author.toLowerCase().contains(author.toLowerCase());
      } else if (title != null) {
        return book.title.toLowerCase().contains(title.toLowerCase());
      } else if (author != null) {
        return book.author.toLowerCase().contains(author.toLowerCase());
      } else {
        return false;
      }
    }).toList();
  }
}



void main() {  var library = Library();

  var book1 = Book('To Kill a Mockingbird', 'Harper Lee', 1960);
  var book2 = Book('The Great Gatsby', 'F. Scott Fitzgerald', 1925);
  var book3 = Book('1984', 'George Orwell', 1949);

  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);

  print('Books in the library:');
  library.searchBooks().forEach(print);

  var searchResult = library.searchBooks(title: 'Great');
  print('\nBooks with "Great" in the title:');
  searchResult.forEach(print);

  library.removeBook(book2);
}
