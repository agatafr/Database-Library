CREATE TABLE Book (
	BOOK_ID int PRIMARY KEY,
	book_type varchar (15) CHECK (book_type NOT LIKE '%[0-9!@#$%^&*]%') NOT NULL,
	original_language varchar (60) CHECK (original_language NOT LIKE '%[0-9!@#$%^&*]%')
);

CREATE TABLE Writings (
	WRITING_ID int PRIMARY KEY,
	year_of_creation int CHECK (year_of_creation BETWEEN 1400 AND YEAR(GETDATE())),
	title varchar (100) NOT NULL	
);

CREATE TABLE Authors (
	ID_NUMBER int PRIMARY KEY,
	name varchar (20) CHECK (name NOT LIKE '%[0-9!@#$%^&*]%') NOT NULL,
	surname varchar (20) CHECK (surname NOT LIKE '%[0-9!@#$%^&*]%') NOT NULL,
	nationality varchar (60) CHECK (nationality NOT LIKE '%[0-9!@#$%^&*]%')
);

CREATE TABLE Publisher (
	PUBLISHER_ID int PRIMARY KEY,
	country varchar (60) CHECK (country NOT LIKE '%[0-9!@#$%^&*]%'),
	name varchar (30) CHECK (name NOT LIKE '%[0-9!@#$%^*]%') NOT NULL UNIQUE
);

CREATE TABLE Shelf(
	number_of_place_on_shelf int CHECK (number_of_place_on_shelf BETWEEN 1 AND 30),
	number_of_shelf int CHECK (number_of_shelf BETWEEN 1 AND 10),
	number_of_rack int CHECK (number_of_rack BETWEEN 1 AND 40),
	PRIMARY KEY (number_of_place_on_shelf, number_of_shelf, number_of_rack)	
);

CREATE TABLE Employees (
	EMPLOYEE_ID int PRIMARY KEY,
	name varchar (20) CHECK(name NOT LIKE '%[0-9!@#$%^&*]%') NOT NULL,
	surname varchar (20) CHECK(surname NOT LIKE '%[0-9!@#$%^&*]%') NOT NULL,
	date_of_birth date CHECK (date_of_birth BETWEEN CAST(DATEADD(year, -130, GETDATE()) as date) AND CAST(GETDATE() as date)) NOT NULL
);

CREATE TABLE Proxy (
	PROXY_NUMBER int PRIMARY KEY,
	name varchar (20) CHECK (name NOT LIKE '%[0-9!@#$%^&*]%') NOT NULL,
	surname varchar (20) CHECK (surname NOT LIKE '%[0-9!@#$%^&*]%') NOT NULL,
	contact_number varchar (9) NOT NULL,
	email varchar (40) CHECK (email NOT LIKE '%[!#$%^&*]%'),
	date_of_birth date CHECK (date_of_birth BETWEEN CAST(DATEADD(year, -130, GETDATE()) as date) AND CAST(GETDATE() as date)) NOT NULL,
	CONSTRAINT checck_mail
		CHECK (email LIKE '%___@__%.__%'),
	CONSTRAINT check_phone
		CHECK (contact_number LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
);

CREATE TABLE Borrower (
	BORROWER_ID_NUMBER int PRIMARY KEY,
	name varchar (20) CHECK (name NOT LIKE '%[0-9!@#$%^&*]%') NOT NULL,
	surname varchar (20) CHECK (surname NOT LIKE '%[0-9!@#$%^&*]%') NOT NULL,
	date_of_birth date CHECK (date_of_birth BETWEEN CAST(DATEADD(year, -130, GETDATE()) as date) AND CAST(GETDATE() as date)) NOT NULL,
	date_of_enrollment date CHECK (date_of_enrollment BETWEEN CAST('2002-04-02' as date)AND CAST(GETDATE() as date)) NOT NULL,
	address varchar (100) NOT NULL,
	email varchar (40) CHECK (email NOT LIKE '%[!#$%^&*]%'),
	contact_number varchar (9) UNIQUE,
	state_of_account varchar (6) NOT NULL,
	date_of_closure date CHECK (date_of_closure BETWEEN CAST('2002-04-02' as date)AND CAST(GETDATE() as date)),
	CONSTRAINT check_borrower_birth
		CHECK (date_of_birth < CAST(GETDATE() as date)), 
	CONSTRAINT check_email
		CHECK (email LIKE '%___@__%.__%'),
	CONSTRAINT check_telephone
		CHECK (contact_number LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	CONSTRAINT check_state
		CHECK (state_of_account in('open','closed')),
	CONSTRAINT check_address
		CHECK (address LIKE '%__,%_,%_,%__,%__,__-___')
);

CREATE TABLE Creation(
	ISBN varchar (17) PRIMARY KEY,
	title varchar (100) NOT NULL ,
	year_of_publication int CHECK (year_of_publication BETWEEN 1900 AND YEAR(GETDATE())) NOT NULL,
	price decimal(5,2) NOT NULL,
	number_of_pages int CHECK (number_of_pages BETWEEN 0 AND 3000),
	language varchar (60) CHECK (language NOT LIKE '%[0-9!@#$%^&*]%') DEFAULT ('polish') NOT NULL,
	BookREF int REFERENCES Book(BOOK_ID)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	PublisherREF int REFERENCES Publisher(PUBLISHER_ID)
		ON DELETE CASCADE
		ON UPDATE CASCADE
		NOT NULL,
	CONSTRAINT check_ISBN
		CHECK (ISBN LIKE '[0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9]')		
);

CREATE TABLE Copies(
	COPY_NUMBER int PRIMARY KEY,
	state varchar (8) NOT NULL,
	number_of_place_on_shelfREF int,
	number_of_shelfREF int,
	number_of_rackREF int,
	ISBNREF varchar(17) REFERENCES Creation(ISBN)
		ON DELETE CASCADE
		ON UPDATE CASCADE
		NOT NULL,
	FOREIGN KEY (number_of_place_on_shelfREF, number_of_shelfREF, number_of_rackREF) REFERENCES Shelf(number_of_place_on_shelf, number_of_shelf, number_of_rack)
		ON DELETE SET NULL
		ON UPDATE CASCADE,
	CONSTRAINT check_copy_state
		CHECK (state in('borrowed','reserved','in stock'))
);

CREATE TABLE Reservation(
	RESERVATION_NUMBER int PRIMARY KEY,
	date_and_time_of_reservation datetime CHECK (date_and_time_of_reservation BETWEEN CAST('2002-04-02 00:00:00' as datetime)AND CAST(GETDATE() as datetime)) NOT NULL,
	date_of_expiration_of_reservation date NOT NULL,
	CopyREF int REFERENCES Copies(COPY_NUMBER)
		ON DELETE CASCADE
		ON UPDATE CASCADE
		NOT NULL,
	CONSTRAINT check_date_of_expiration_of_reservation
		CHECK (NOT date_of_expiration_of_reservation < date_and_time_of_reservation
			AND date_of_expiration_of_reservation <= CAST(DATEADD(day, 7, CAST(date_and_time_of_reservation as date)) as date))
);

CREATE TABLE Rental (
	RENTAL_ID int PRIMARY KEY,
	date_of_rent date CHECK (date_of_rent BETWEEN CAST('2002-04-02' as date)AND CAST(GETDATE() as date)) NOT NULL,
	due_date date NOT NULL,
	return_date date DEFAULT NULL,
	CopyREF int REFERENCES Copies(COPY_NUMBER)
		ON DELETE SET NULL
		ON UPDATE CASCADE,
	BorrowerREF int REFERENCES Borrower(BORROWER_ID_NUMBER)
		ON DELETE SET NULL
		ON UPDATE CASCADE,
	given_by_Employee_ID int REFERENCES Employees(EMPLOYEE_ID)
		ON DELETE SET NULL
		ON UPDATE CASCADE,
	reclaimed_by_Employee_ID int REFERENCES Employees(EMPLOYEE_ID) DEFAULT NULL,
	CONSTRAINT check_due_date
		CHECK (due_date = CAST(DATEADD(day, 30, CAST(date_of_rent as date)) as date)),
	CONSTRAINT check_return_date
		CHECK (NOT return_date < date_of_rent
				AND return_date <= CAST(GETDATE() as date))
);

CREATE TABLE Debt(
	PAYMENT_ID int PRIMARY KEY,
	amount_to_be_paid decimal(5,2) NOT NULL,
	state_of_transaction varchar(6) NOT NULL,
	form_of_payment varchar(4),
	RentalREF int REFERENCES Rental(RENTAL_ID)
		ON DELETE SET NULL
		ON UPDATE CASCADE,
	CONSTRAINT check_state_of_transaction
		CHECK (state_of_transaction in('paid','unpaid')),
	CONSTRAINT check_form_of_payment
		CHECK (form_of_payment in('cash','card')),
);

CREATE TABLE Written (
	AuthorREF int REFERENCES Authors(ID_NUMBER)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	BookREF int REFERENCES Book(BOOK_ID)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	PRIMARY KEY(AuthorREF, BookREF)
);

CREATE TABLE Containing (
	WritingREF int REFERENCES Writings(WRITING_ID)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CreationREF varchar(17) REFERENCES Creation(ISBN)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	PRIMARY KEY(WritingREF, CreationREF)
);

CREATE TABLE Created (
	AuthorREF int REFERENCES Authors(ID_NUMBER)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	WritingREF int REFERENCES Writings(WRITING_ID)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	PRIMARY KEY(AuthorREF, WritingREF)
);

CREATE TABLE ProxyBorrower (
	ProxyREF int REFERENCES Proxy(PROXY_NUMBER)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	BorrowerREF int REFERENCES Borrower(BORROWER_ID_NUMBER)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	PRIMARY KEY(ProxyREF, BorrowerREF)
);

ALTER TABLE Copies
	ADD CONSTRAINT df_Copies
	DEFAULT 'in stock' FOR state; 

ALTER TABLE Borrower
	ADD CONSTRAINT df_date_of_closure
	DEFAULT NULL FOR date_of_closure;