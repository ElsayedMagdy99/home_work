void main() {
  Library library = Library();
  library.addBook(Book(
      title: 'The Great Gatsby',
      author: ' Scott Fitzgerald',
      isbn: '9780333791035'));
  library.borrowBook('9780333791035');
  library.returnBook('9780333791035');
  library.searchBytitle('Great');
}

class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book({
    required this.title,
    required this.author,
    required this.isbn,
    this.isAvailable = true,
  });
  @override
  String toString() {
    return 'Title: $title, Author: $author, ISBN: $isbn, Available: $isAvailable';
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);

    print('book :${book.title} added to the library');
  }

  bool borrowBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn && book.isAvailable) {
        book.isAvailable = false;
        print('you borrowed ${book.title}');
        return true;
      }
    }
    print('book not avilable or not found');
    return false;
  }

  bool returnBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn && !book.isAvailable) {
        book.isAvailable = true;
        print('you returned ${book.title}');
        return true;
      }
    }
    print('book not found or already returned');
    return false;
  }

  List<Book> searchBytitle(String title) {
    List<Book> result = books..where((book) => book.title.toLowerCase().contains(title.toLowerCase()))
        .toList();
    if (result.isEmpty) {
      print('no books found with title: $title');
    } else {
      print('books found');
      for (var book in result) {
        print(book);
      }
    }
    return result;
  }
}
