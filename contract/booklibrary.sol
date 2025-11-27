// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BookLibrary {
    // Contract deployer is the owner (e.g. the librarian)
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Book structure
    struct Book {
        string title;
        string author;
        uint256 copies;
    }

    // Book ID => Book Data
    mapping(uint256 => Book) public books;

    // Track borrowed books: bookId => borrower => isBorrowed?
    mapping(uint256 => mapping(address => bool)) public borrowed;

    uint256 public bookCount = 0;

    // Restrict certain functions only to owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    // Add a book to the library (only owner)
    function addBook(string memory _title, string memory _author, uint256 _copies) public onlyOwner {
        require(_copies > 0, "Copies must be > 0");
        
        books[bookCount] = Book(_title, _author, _copies);
        bookCount++;
    }

    // Borrow a book
    function borrowBook(uint256 _bookId) public {
        require(_bookId < bookCount, "Book does not exist");
        require(books[_bookId].copies > 0, "No copies available");
        require(!borrowed[_bookId][msg.sender], "Already borrowed this book");

        books[_bookId].copies -= 1;
        borrowed[_bookId][msg.sender] = true;
    }

    // Return a book
    function returnBook(uint256 _bookId) public {
        require(_bookId < bookCount, "Book does not exist");
        require(borrowed[_bookId][msg.sender], "You did not borrow this book");

        books[_bookId].copies += 1;
        borrowed[_bookId][msg.sender] = false;
    }

    // Get book details (read-only)
    function getBook(uint256 _bookId) public view returns (string memory, string memory, uint256) {
        require(_bookId < bookCount, "Book does not exist");
        Book memory b = books[_bookId];
        return (b.title, b.author, b.copies);
    }
}

