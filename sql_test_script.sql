CREATE TABLE Books (
    BookID NUMBER PRIMARY KEY,
    Title VARCHAR2(100),
    ISBN VARCHAR2(20),
    PublishedYear NUMBER
);

CREATE TABLE Authors (
    AuthorID NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    Nationality VARCHAR2(50)
);

CREATE TABLE Borrowers (
    BorrowerID NUMBER PRIMARY KEY,
    FullName VARCHAR2(100),
    MembershipDate DATE
);

CREATE TABLE Loans (
    LoanID NUMBER PRIMARY KEY,
    BorrowerID NUMBER,
    BookID NUMBER,
    LoanDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BorrowerID) REFERENCES Borrowers(BorrowerID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

CREATE TABLE BookAuthors (
    BookID NUMBER,
    AuthorID NUMBER,
    PRIMARY KEY (BookID, AuthorID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

INSERT INTO Books (BookID, Title, ISBN, PublishedYear)
VALUES (1, 'The Great Gatsby', '9780743273565', 1925);

INSERT INTO Books (BookID, Title, ISBN, PublishedYear)
VALUES (2, 'To Kill a Mockingbird', '9780061120084', 1960);

INSERT INTO Authors (AuthorID, Name, Nationality)
VALUES (1, 'F. Scott Fitzgerald', 'American');

INSERT INTO Authors (AuthorID, Name, Nationality)
VALUES (2, 'Harper Lee', 'American');

INSERT INTO Borrowers (BorrowerID, FullName, MembershipDate)
VALUES (1, 'John Doe', TO_DATE('2022-05-10', 'YYYY-MM-DD'));

INSERT INTO Borrowers (BorrowerID, FullName, MembershipDate)
VALUES (2, 'Jane Smith', TO_DATE('2022-06-15', 'YYYY-MM-DD'));

INSERT INTO Loans (LoanID, BorrowerID, BookID, LoanDate, ReturnDate)
VALUES (1, 1, 1, TO_DATE('2023-09-10', 'YYYY-MM-DD'), TO_DATE('2023-09-20', 'YYYY-MM-DD'));

INSERT INTO Loans (LoanID, BorrowerID, BookID, LoanDate, ReturnDate)
VALUES (2, 2, 2, TO_DATE('2023-09-12', 'YYYY-MM-DD'), NULL);


INSERT INTO BookAuthors (BookID, AuthorID)
VALUES (1, 1);

INSERT INTO BookAuthors (BookID, AuthorID)
VALUES (2, 2);


SELECT Books.Title, Authors.Name
FROM Books
JOIN BookAuthors ON Books.BookID = BookAuthors.BookID
JOIN Authors ON BookAuthors.AuthorID = Authors.AuthorID;

SELECT Borrowers.FullName, Books.Title, Loans.LoanDate, Loans.ReturnDate
FROM Borrowers
JOIN Loans ON Borrowers.BorrowerID = Loans.BorrowerID
JOIN Books ON Loans.BookID = Books.BookID;

