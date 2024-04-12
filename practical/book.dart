class Book {
  String _title;
  String _author;
  int _publicationYear;

  Book(this._title, this._author, this._publicationYear);

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get author => _author;

  set author(String value) {
    _author = value;
  }

  int get publicationYear => _publicationYear;

  set publicationYear(int value) {
    _publicationYear = value;
  }

  @override
  String toString() {
    return '$_title by $_author, published in $_publicationYear';
  }
}
