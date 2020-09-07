class Booksdata {
  String bookname;
  String authorName;
  String imagePath;
  int percentageCompleted;
  double rating ;
  Booksdata(
      {this.authorName,
      this.bookname,
      this.percentageCompleted,
      this.imagePath,this.rating});
}

List<Booksdata> continueReading = [
  Booksdata(
      bookname: "Wings of Fire",
      authorName: "APJ Abdul Kalam",
      percentageCompleted: 64,
      imagePath: 'assets/images/APJ.jpg'),
  Booksdata(
      bookname: "The Arsonist",
      authorName: "Chloe Hooper",
      percentageCompleted: 16,
      imagePath: 'assets/images/ChloeHooper.jpg'),
  Booksdata(
      bookname: "Harry Potter",
      authorName: "J.K Rowling",
      percentageCompleted: 44,
      imagePath: 'assets/images/HarryPotter.jpeg'),
];

List<Booksdata> popular = [
  Booksdata(
      bookname: "This is How It Always Is",
      authorName: "Laurie Frankel",
      percentageCompleted: 0,
      imagePath: 'assets/images/ThisisHow.jpeg',
      rating: 4.5
      ),

  Booksdata(
      bookname: "In A Land Of Paper Gods",
      authorName: "Rebecca Mackenzie",
      percentageCompleted: 0,
      imagePath: 'assets/images/rebbeca.jpg',
      rating: 4.3
      ),
  Booksdata(
      bookname: "The Guest List",
      authorName: "Lucy Foley",
      percentageCompleted: 0,
      imagePath: 'assets/images/theguest.jpeg',
      rating: 4.0
      ),
      
];
