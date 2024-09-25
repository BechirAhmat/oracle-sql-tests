The database system being developed is for managing a library system. This system tracks books, authors, borrowers, and loans of books. The primary goal of the system is to provide functionality to:

Maintain a catalog of books.
Store author information and manage the relationship between books and their authors.
Manage borrower records.
Track the borrowing and return of books via loans.
The system allows efficient tracking of which books are loaned out and to whom, ensuring that library staff can monitor borrowing activity and maintain proper records of book transactions.


Table Creation:

Created tables for Books, Authors, Borrowers, Loans, and BookAuthors.
Each table includes primary keys and appropriate data types.
Foreign keys were used to maintain relationships between tables (e.g., Loans table references both Books and Borrowers).


Table Relationships:
The database maintains proper one-to-many and many-to-many relationships. For instance, each Book can have multiple Loans, representing the borrowers who have borrowed that book over time. The many-to-many relationship between Books and Authors is managed using the BookAuthors associative table.

Screenshots of some transactions:
![sn1](https://github.com/user-attachments/assets/23dfddf3-4a30-4bee-8eaf-618de0a9ccac)
![sn2](https://github.com/user-attachments/assets/511a3538-69b0-4731-aae5-5bc32bf59295)
