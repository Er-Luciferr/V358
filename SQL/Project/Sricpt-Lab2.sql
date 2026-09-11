CREATE DATABASE new_database;
RENAME TABLE
old_database.table1 TO new_database.table1,
old_database.table2 TO new_database.table2;



-- Script 2

-- 1. Add Primary Keys
ALTER TABLE Accounts
ADD CONSTRAINT PK_Accounts
PRIMARY KEY (AccountID);

ALTER TABLE Transactions
ADD CONSTRAINT PK_Transactions
PRIMARY KEY (TransactionID);

ALTER TABLE Branches
ADD CONSTRAINT PK_Branches
PRIMARY KEY (BranchID);

ALTER TABLE Loans
ADD CONSTRAINT PK_Loans
PRIMARY KEY (LoanID);




-- 3. Connect Transactions with Accounts
ALTER TABLE Transactions
ADD AccountID INT;

ALTER TABLE Transactions
ADD FOREIGN KEY (AccountID)
REFERENCES Accounts(AccountID);


-- 4. Connect Loans with Customers
ALTER TABLE Loans
ADD CustomerID INT;

ALTER TABLE Loans
ADD CONSTRAINT FK_Loans_Customers
FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID);


-- 5. Connect Accounts with Branches
ALTER TABLE Accounts
ADD BranchID INT;

ALTER TABLE Accounts
ADD CONSTRAINT FK_Accounts_Branches
FOREIGN KEY (BranchID)
REFERENCES Branches(BranchID);