class Book {
  String title; // Номын нэр
  String author; // Зохиолч
  String isbn; // ISBN дугаар
  bool isAvailable; // Боломжит эсэх
  Book(this.title, this.author, this.isbn, {this.isAvailable = true});
}

class LibraryMember {
  String name; // Гишүүний нэр
  String memberId; // Гишүүний дугаар
  List<Book> borrowedBooks = []; // Зээлсэн номын жагсаалт
  LibraryMember(this.name, this.memberId);

  void borrowBooks(Book book) {
    if (book.isAvailable) {
      borrowedBooks.add(book);
    } else {
      print('Sorry the book : ${book.title} is not available');
    }
  }
}

void main() {}
