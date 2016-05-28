use `class-2015-1-04-547-330-01_kmt136`;

DROP TABLE IF EXISTS purchases;
DROP TABLE IF EXISTS expenseType;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS timeOfPurchase; 
DROP TABLE IF EXISTS receipt_has_store;  
DROP TABLE IF EXISTS receipt;
DROP TABLE IF EXISTS store;

CREATE TABLE receipt (
	idReceipt integer PRIMARY KEY AUTO_INCREMENT,
	total decimal(8, 2) NOT NULL,
    tax decimal(8, 2),
    numberOfItems integer
) ENGINE=INNODB;

CREATE TABLE category (
	expense VARCHAR(45) PRIMARY KEY
)ENGINE=INNODB;

CREATE TABLE expenseType (
	expense VARCHAR(45),
		CONSTRAINT fk_expense
			FOREIGN KEY(expense)
			REFERENCES category(expense),
    tender VARCHAR(45),
	idReceipt integer PRIMARY KEY,
		CONSTRAINT fk_expenseReceipt 
			FOREIGN KEY(idReceipt)
				REFERENCES receipt(idReceipt)
) ENGINE=INNODB;

/*ER Diagram this table is named 'when' */
CREATE TABLE timeOfPurchase (
	dateOfPurchase DATE,
	timeOfPurchase TIME,
        idReceipt integer PRIMARY KEY,
		CONSTRAINT fk_timeReceipt 
			FOREIGN KEY(idReceipt)
				REFERENCES receipt(idReceipt)
) ENGINE=INNODB;

CREATE TABLE store (
	storeName VARCHAR(45),
    storeCity VARCHAR(45),
    address VARCHAR(45),
    phone VARCHAR(45),
    zipcode integer,
    primary key (storeName, storeCity)
) ENGINE=INNODB;
/*
CREATE TABLE receipt_has_store (
	idReceipt INTEGER,
		CONSTRAINT fk_Receipt 
			FOREIGN KEY(idReceipt)
				REFERENCES receipt(idReceipt),
                
	storeName VARCHAR(45),
		CONSTRAINT fk_storeName 
			FOREIGN KEY(storeName)
				REFERENCES store(storeName),
	
	storeCity VARCHAR(45),
		CONSTRAINT fk_storeCity 
			FOREIGN KEY(storeCity)
				REFERENCES store(storeCity),
                PRIMARY KEY (idReceipt, storeName, storeCity)
) ENGINE=INNODB;
*/
CREATE TABLE 	receipt_has_store (
	idReceipt INTEGER,
		CONSTRAINT fk_RHSReceipt 
			FOREIGN KEY (idReceipt)
				REFERENCES receipt(idReceipt),
    storeName VARCHAR(45),
    storeCity VARCHAR(45),
		CONSTRAINT fk_storeName_storeCity 
			FOREIGN KEY(storeName, storeCity)
				REFERENCES store(storeName, storeCity)

)ENGINE=INNODB;


DELETE FROM receipt;
DELETE FROM expenseType;
DELETE FROM timeOfPurchase;
DELETE FROM store;
DELETE FROM receipt_has_store;

INSERT INTO receipt (idReceipt, total, tax, numberOfItems)
		VALUES (1, "12.31", "0.81", 2);

INSERT INTO receipt (idReceipt, total, tax, numberOfItems)
		VALUES (2, "8.25", "0.54", 1);

INSERT INTO receipt (idReceipt, total, tax, numberOfItems)
		VALUES (3, "75.37", "4.93", 5);
        


INSERT INTO receipt (idReceipt, total, tax, numberOfItems)
		VALUES (4, "60.95", "3.99", 6);

INSERT INTO receipt (idReceipt, total, tax, numberOfItems)
		VALUES (5, "9.56", "0.63", 2);

INSERT INTO receipt (idReceipt, total, tax, numberOfItems)
		VALUES (6, "16.05", "1.05", 2);

INSERT INTO receipt (idReceipt, total, tax, numberOfItems)
		VALUES (7, "18.47", "0.49", 4);

INSERT INTO receipt (idReceipt, total, tax, numberOfItems)
		VALUES (8, "23.97", "1.57", 2);

INSERT INTO receipt (idReceipt, total, tax, numberOfItems)
		VALUES (9, "3.98", "0.00", 2);
        
INSERT INTO receipt (idReceipt, total, tax, numberOfItems)
		VALUES (10, "64.78", "0.00", 5);
        
INSERT INTO receipt (idReceipt, total, tax, numberOfItems)
		VALUES (11, "33.77", "2.21", 5);
        
INSERT INTO receipt (idReceipt, total, tax, numberOfItems)
		VALUES (12, "12.47", "0.32", 5);
        
INSERT INTO receipt (idReceipt, total, tax, numberOfItems)
		VALUES (13, "8.50", "0.56", 1);
        
INSERT INTO receipt (idReceipt, total, tax, numberOfItems)
		VALUES (14, "38.41", "2.51", 3);
        
INSERT INTO receipt (idReceipt, total, tax, numberOfItems)
		VALUES (15, "2.09", "0.15", 1);
        
INSERT INTO receipt (idReceipt, total, tax, numberOfItems)
		VALUES (16, "7.75", "0.51", 1);

INSERT INTO receipt (idReceipt, total, tax, numberOfItems)
		VALUES (17, "8.30", "0.56", 1);
INSERT INTO receipt (idReceipt, total, tax, numberOfItems)
		VALUES (18, "9.42", "0.63", 1);
INSERT INTO receipt (idReceipt, total, tax, numberOfItems)
		VALUES (19, "5.35", "0.35", 1);

INSERT INTO receipt (idReceipt, total, tax, numberOfItems)
		VALUES (20, "3.25", "0.21", 1);

INSERT INTO category (expense)
		VALUES("food/drink");
INSERT INTO category (expense)
		VALUES("tools");
INSERT INTO category (expense)
		VALUES("electronics");
INSERT INTO category (expense)
		VALUES("household");
INSERT INTO category (expense)
		VALUES("groceries");




INSERT INTO expenseType (idReceipt, expense, tender)
		VALUES (1, "food/drink", "credit");

INSERT INTO expenseType (idReceipt, expense, tender)
		VALUES (2, "food/drink", "credit");

INSERT INTO expenseType (idReceipt, expense, tender)
		VALUES (3, "electronics", "credit");

INSERT INTO expenseType (idReceipt, expense, tender)
		VALUES (4, "tools", "credit");

INSERT INTO expenseType (idReceipt, expense, tender)
		VALUES (5, "household", "debit");

INSERT INTO expenseType (idReceipt, expense, tender)
		VALUES (6, "food/drink", "cash");

INSERT INTO expenseType (idReceipt, expense, tender)
		VALUES (7, "groceries", "credit");

INSERT INTO expenseType (idReceipt, expense, tender)
		VALUES (8, "food/drink", "credit");

INSERT INTO expenseType (idReceipt, expense, tender)
		VALUES (9, "food/drink", "credit");
        
INSERT INTO expenseType (idReceipt, expense, tender)
		VALUES (10, "food/drink", "debit");
        
INSERT INTO expenseType (idReceipt, expense, tender)
		VALUES (11, "food/drink", "debit");
        
INSERT INTO expenseType (idReceipt, expense, tender)
		VALUES (12, "food/drink", "cash");
        
INSERT INTO expenseType (idReceipt, expense, tender)
		VALUES(13, "household", "debit");
        
INSERT INTO expenseType (idReceipt, expense, tender)
		VALUES(14, "household", "debit");

INSERT INTO expenseType (idReceipt, expense, tender)
		VALUES(15, "food/drink", "credit");
        
INSERT INTO expenseType (idReceipt, expense, tender)
		VALUES(16, "household", "debit");

INSERT INTO expenseType (idReceipt, expense, tender)
		VALUES(17, "household", "debit");
        
INSERT INTO expenseType (idReceipt, expense, tender)
		VALUES(18, "food/drink", "cash");
        
INSERT INTO expenseType (idReceipt, expense, tender)
		VALUES(19, "food/drink", "debit");

INSERT INTO expenseType (idReceipt, expense, tender)
		VALUES(20, "food/drink", "debit");
        
        

INSERT INTO timeOfPurchase (idReceipt, dateOfPurchase, timeOfPurchase)
		VALUES (1, "2015-01-31", "7:02 PM");

INSERT INTO timeOfPurchase (idReceipt, dateOfPurchase, timeOfPurchase)
		VALUES (2, "2015-02-11", "11:53 AM");

INSERT INTO timeOfPurchase (idReceipt, dateOfPurchase, timeOfPurchase)
		VALUES (3, "2014-11-14", "8:57 AM");

INSERT INTO timeOfPurchase (idReceipt, dateOfPurchase, timeOfPurchase)
		VALUES (4, "2015-02-05", "7:03 PM");

INSERT INTO timeOfPurchase (idReceipt, dateOfPurchase, timeOfPurchase)
		VALUES (5, "2015-01-22", "4:15 PM");

INSERT INTO timeOfPurchase (idReceipt, dateOfPurchase, timeOfPurchase)
		VALUES (6, "2015-02-27", "9:57 AM");

INSERT INTO timeOfPurchase (idReceipt, dateOfPurchase, timeOfPurchase)
		VALUES (7, "2015-02-24", "4:18 PM");

INSERT INTO timeOfPurchase (idReceipt, dateOfPurchase, timeOfPurchase)
		VALUES (8, "2015-02-12", "8:39 PM");

INSERT INTO timeOfPurchase (idReceipt, dateOfPurchase, timeOfPurchase)
		VALUES (9, "2015-02-25", "2:43 PM");
        
INSERT INTO timeOfPurchase (idReceipt, dateOfPurchase, timeOfPurchase)
		VALUES (10, "2015-02-20", "10:13 PM");

INSERT INTO timeOfPurchase (idReceipt, dateOfPurchase, timeOfPurchase)
		VALUES (11, "2015-04-01", "09:15 PM");
        
INSERT INTO timeOfPurchase (idReceipt, dateOfPurchase, timeOfPurchase)
		VALUES (12, "2014-11-01", "06:19 PM");

INSERT INTO timeOfPurchase (idReceipt, dateOfPurchase, timeOfPurchase)
		VALUES(13, "2015-03-20", "10:15 AM");
        
INSERT INTO timeOfPurchase (idReceipt, dateOfPurchase, timeOfPurchase)
		VALUES (14, "2015-03-18", "09:37 AM");
        
INSERT INTO timeOfPurchase (idReceipt, dateOfPurchase, timeOfPurchase)
		VALUES(15, "2015-04-09", "6:45 PM");

INSERT INTO timeOfPurchase (idReceipt, dateOfPurchase, timeOfPurchase)
		VALUES (16, "2015-03-18", "1:06 PM");

INSERT INTO timeOfPurchase (idReceipt, dateOfPurchase, timeOfPurchase)
		VALUES (17, "2015-04-20", "4:16 PM");
        
INSERT INTO timeOfPurchase (idReceipt, dateOfPurchase, timeOfPurchase)
		VALUES (18, "2015-02-21", "12:23 PM");

INSERT INTO timeOfPurchase (idReceipt, dateOfPurchase, timeOfPurchase)
		VALUES (19, "2015-03-08", "6:23 PM");
        
INSERT INTO timeOfPurchase (idReceipt, dateOfPurchase, timeOfPurchase)
		VALUES (20, "2015-03-21", "1:41 PM");


INSERT INTO store ( StoreName, storeCity, Address, phone,zipCode)
		VALUES( "Buffalo Wild Wings", "Bridgewater", "970 US 22", "908-704-9300", "08807");

INSERT INTO store ( StoreName, storeCity, Address, phone,zipCode)
		VALUES( "Chipotle", "Bridgewater", "524 shoppes blvd", "732-342-7272","08902");

INSERT INTO store ( StoreName, storeCity, Address, phone,zipCode)
		VALUES( "Target", "South Plainfield", "5000 Hadley Center Drive","908-444-2023","07080");

INSERT INTO store ( StoreName, storeCity, Address, phone,zipCode)
		VALUES( "Home Depot", "South Plainfield", "3100 Hamilton Blvd", "732-752-5900","07080");


INSERT INTO store ( StoreName, storeCity, Address, phone,zipCode)
		VALUES( "Target", "Milltown", "400 Ryders Lane","732-613-3903", "08852");


INSERT INTO store ( StoreName, storeCity, Address, phone,zipCode)
		VALUES( "G.S. Alehouse", "New Brunswick", "378 George Street", "732-543-2408", "08901");


INSERT INTO store ( StoreName, storeCity, Address, phone,zipCode)
		VALUES( "Acme", "Milltown", "300 Ryders Lane", "732-254-7900", "08852");


INSERT INTO store ( StoreName, storeCity, Address, phone,zipCode)
		VALUES( "Peter's Liquor Store ", "New Brunswick", null, "732-246-1616",null);
        
INSERT INTO store ( StoreName, storeCity, Address, phone,zipCode)
		VALUES( "Tony's Di Napoli", "New York", "147 W 43rd Street", "212-221-0100", null);
        
INSERT INTO store ( StoreName, storeCity, Address, phone,zipCode)
		VALUES("Chili's Grill & Bar", "North Brunswick", "867 US Highway 1", "800-983-4637", "08902");
        
INSERT INTO store ( StoreName, storeCity, Address, phone,zipCode)
		VALUES("Taco Bell", "Milltown", "200 Ryders Ln", "732-418-1212", "08850");

INSERT INTO store ( StoreName, storeCity, Address, phone,zipCode)
		VALUES("Home Depot", "Milltown", "401 S Main Street", "732-432-0500", "08850");
        
INSERT INTO store ( StoreName, storeCity, Address, phone,zipCode)
		VALUES("Dunkin Donuts", "Andover", "204 Route 206 N", "null","null");

INSERT INTO store ( StoreName, storeCity, Address, phone,zipCode)
		VALUES( "Wendys","New Brunswick", "null", "null", "08901");

INSERT INTO store ( StoreName, storeCity, Address, phone,zipCode)
		VALUES( "Knight Deli","New Brunswick", "null", "null", "08901");
        
INSERT INTO store ( StoreName, storeCity, Address, phone,zipCode)
		VALUES( "Pizza Hut","New Brunswick", "null", "null", "08901");

INSERT INTO store ( StoreName, storeCity, Address, phone,zipCode)
		VALUES( "Brother Jimmy","New Brunswick", "null", "null", "08901");
        
INSERT INTO store ( StoreName, storeCity, Address, phone,zipCode)
		VALUES( "Burger King","New Brunswick", "null", "null", "08901");
        

INSERT INTO receipt_has_store (idReceipt, storeName, storeCity)
		VALUES (1, "Buffalo Wild Wings", "Bridgewater");
        
INSERT INTO receipt_has_store (idReceipt, storeName, storeCity)
		VALUES (2, "Chipotle", "Bridgewater");
        
INSERT INTO receipt_has_store (idReceipt, storeName, storeCity)
		VALUES (3, "Target", "South Plainfield");
        
INSERT INTO receipt_has_store (idReceipt, storeName, storeCity)
		VALUES (4, "Home Depot", "South Plainfield");
        
INSERT INTO receipt_has_store (idReceipt, storeName, storeCity)
		VALUES (5, "Target", "Milltown");
        
INSERT INTO receipt_has_store (idReceipt, storeName, storeCity)
		VALUES (6, "G.S. Alehouse", "New Brunswick");
        
INSERT INTO receipt_has_store (idReceipt, storeName, storeCity)
		VALUES (7, "Acme", "Milltown");
        
INSERT INTO receipt_has_store (idReceipt, storeName, storeCity)
		VALUES (8, "Peter's Liquor Store", "New Brunswick");
        
INSERT INTO receipt_has_store (idReceipt, storeName, storeCity)
		VALUES (9, "Wendys", "New Brunswick");
        
INSERT INTO receipt_has_store (idReceipt, storeName, storeCity)
		VALUES (10, "Tony's Di Napoli", "New York");
        
INSERT INTO receipt_has_store (idReceipt, storeName, storeCity)
		VALUES (11, "Chili's Grill & Bar", "North Brunswick");
        
INSERT INTO receipt_has_store (idReceipt, storeName, storeCity)
		VALUES (12, "Taco Bell", "Milltown");
INSERT INTO receipt_has_store (idReceipt, storeName, storeCity)
		VALUES(13, "Home Depot", "Milltown");

INSERT INTO receipt_has_store (idReceipt, storeName, storeCity)
		VALUES(14, "Home Depot", "Milltown");
        
INSERT INTO receipt_has_store (idReceipt, storeName, storeCity)
		VALUES(15, "Dunkin Donuts", "Andover");
        
INSERT INTO receipt_has_store (idReceipt, storeName, storeCity)
		VALUES(16, "Home Depot", "Milltown");
        
INSERT INTO receipt_has_store (idReceipt, storeName, storeCity)
		VALUES(17, "Knight Deli", "New Brunswick");
        
INSERT INTO receipt_has_store (idReceipt, storeName, storeCity)
		VALUES(18, "Pizza Hut", "New Brunswick");
        
INSERT INTO receipt_has_store (idReceipt, storeName, storeCity)
		VALUES(19, "Brother Jimmy", "New Brunswick");
        
INSERT INTO receipt_has_store (idReceipt, storeName, storeCity)
		VALUES(20, "Burger King", "New Brunswick");
