INSERT INTO Book values (1, 'young adult', 'English');
INSERT INTO Book values (2, 'romance', 'English');
INSERT INTO Book values (3, 'magical realism', 'Japanese');
INSERT INTO Book values (4, 'fantasy', 'Polish');
INSERT INTO Book values (5, 'crime', 'Norwegian');
INSERT INTO Book values (6, 'crime', 'English');
INSERT INTO Book values (7, 'fantasy', 'English');
INSERT INTO Book values (8, 'horror fiction', 'English');
INSERT INTO Book values (9, 'young adult', 'Polish');
INSERT INTO Book values (10, 'fiction', 'Korean');

INSERT INTO Writings values	(1, 1794, 'The Tyger');
INSERT INTO Writings values (2, 1789, 'The Lamb');
INSERT INTO Writings values (3, 1993, 'Jawa');
INSERT INTO Writings values (4, 1998, 'Nic darowane');
INSERT INTO Writings values (5, 1991, 'Kot w pustym mieszkaniu');
INSERT INTO Writings values (6, 1993, 'Niebo');
INSERT INTO Writings values (7, 1955, 'Entliczek, pętliczek');
INSERT INTO Writings values (8, 1939, 'Kaczka dziwaczka');
INSERT INTO Writings values (9, 1938, 'Leń');
INSERT INTO Writings values (10, 1938, 'Na straganie');

INSERT INTO Authors values (1, 'Arthur', 'Conan-Doyle', 'British' );
INSERT INTO Authors values (2, 'Kiera', 'Cass', 'American');
INSERT INTO Authors values (3, 'Jo', 'Nesbø', 'Norwegian');
INSERT INTO Authors values (4, 'John Ronald Reuel', 'Tolkien', 'British');
INSERT INTO Authors values (5, 'Jogn', 'Green', 'American');
INSERT INTO Authors values (6, 'Toshikazu', 'Kawaguchi', 'Japanese');
INSERT INTO Authors values (7, 'Emily' , 'Brontë', 'British');
INSERT INTO Authors values (8, 'Jojo' , 'Moyes', 'British');
INSERT INTO Authors values (9, 'Andrzej' , 'Sapkowski', 'Polish');
INSERT INTO Authors values (10, 'Jane' , 'Austen', 'British');
INSERT INTO Authors values (11, 'William', 'Blake', 'English');
INSERT INTO Authors values (12, 'Wisława', 'Szymborksa', 'Polish');
INSERT INTO Authors values (13, 'Jan', 'Brzechwa', 'Polish');
INSERT INTO Authors values (14, 'Stephen', 'King', 'American');
INSERT INTO Authors values (15, 'Won-pyung', 'Sohn', 'Korean');

INSERT INTO Publisher values (1, 'England', 'Tate Publishing');
INSERT INTO Publisher values (2, 'Poland', 'Znak');
INSERT INTO Publisher values (3, 'Poland', 'Wydawnictwo Albatros');
INSERT INTO Publisher values (4, 'Poland', 'G&P');
INSERT INTO Publisher values (5, 'Poland', 'Mova');
INSERT INTO Publisher values (6, 'Poland', 'Wydawnictwo Jaguar');
INSERT INTO Publisher values (7, 'Poland', 'Bukowy Las');
INSERT INTO Publisher values (8, 'England', 'William Collins');
INSERT INTO Publisher values (9, 'England', 'Palgrave Macmillan');
INSERT INTO Publisher values (10, 'Poland', 'Świat Książki');
INSERT INTO Publisher values (11, 'Poland', 'SuperNowa');
INSERT INTO Publisher values (12, 'Poland', 'Wydawnictwo Dolnośląskie');
INSERT INTO Publisher values (13, 'Poland', 'Olejsiuk');
INSERT INTO Publisher values (14, 'Poland', 'Iskry');

INSERT INTO Shelf values (3, 4, 5);
INSERT INTO Shelf values (19, 9, 5);
INSERT INTO Shelf values (3, 6, 4);
INSERT INTO Shelf values (3, 7, 4);
INSERT INTO Shelf values (4, 3, 4);
INSERT INTO Shelf values (2, 2, 5);
INSERT INTO Shelf values (3, 1, 3);
INSERT INTO Shelf values (6, 1, 3);
INSERT INTO Shelf values (7, 1, 3);
INSERT INTO Shelf values (3, 5, 3);
INSERT INTO Shelf values (15, 2, 6);
INSERT INTO Shelf values (10, 9, 7);
INSERT INTO Shelf values (11, 4, 10);
INSERT INTO Shelf values (6, 1, 2);
INSERT INTO Shelf values (5, 3, 2);
INSERT INTO Shelf values (3, 4, 2);
INSERT INTO Shelf values (9, 4, 21);
INSERT INTO Shelf values (13, 4, 21);
INSERT INTO Shelf values (3, 4, 21);
INSERT INTO Shelf values (1, 3, 21);

INSERT INTO Creation values ('978-18-54377-29-6', 'Songs of Innocence and of Experience', 2018, 45.88, 44, 'English', NULL, 1);
INSERT INTO Creation values ('978-83-24032-76-1', 'Koniec i początek', 2015, 44.99, 48, 'Polish', NULL, 2);
INSERT INTO Creation values ('978-83-82156-84-3', 'To', 2022, 42.19, 1104, 'Polish', 8, 3);
INSERT INTO Creation values ('978-83-72723-91-8', 'Brzechwa Dzieciom', 2022, 44.91, 132, 'Polish', NULL, 4);
INSERT INTO Creation values ('978-83-75174-48-9', 'Akademia Pana Kleksa', 2020, 37.00, 136, 'Polish', 9, 2);
INSERT INTO Creation values ('978-83-66967-43-4', 'Almond: Ten, który nie czuł', 2020, 39.90, 224, 'Polish', 10, 5);
INSERT INTO Creation values ('978-83-82660-91-3', 'Rywalki', 2022, 39.90, 336, 'Polish', 2, 6);
INSERT INTO Creation values ('978-83-64481-72-7', 'Will Grayson, Will Grayson', 2015, 34.90, 368, 'Polish', 1, 7);
INSERT INTO Creation values ('978-00-07350-81-0', 'Wuthering Heights', 2010, 16.90, 400, 'English', 2, 8);
INSERT INTO Creation values ('978-83-82894-58-5', 'Duma i Uprzedzenie', 2021, 49.90, 368, 'Polish', 2, 10);
INSERT INTO Creation values ('978-15-29029-58-1', 'Before the Coffee Gets Cold', 2019, 39.35, 213, 'English', 3, 9);
INSERT INTO Creation values ('978-83-75780-63-5', 'Wiedźmin: Ostatnie Życzenie', 2014, 59.90, 332, 'Polish', 4, 11);
INSERT INTO Creation values ('978-83-24589-88-3', 'Pierwszy Śnieg', 2014, 43.68, 432,'Polish', 5, 12);
INSERT INTO Creation values ('978-83-27415-42-4', 'Sherlock Holmes : Pies Baskervillów', 2015, 14.99, 242, 'Polish', 6, 13);
INSERT INTO Creation values ('978-83-24410-99-6', 'Hobbit', 2021, 34.90, 320, 'Polish', 7, 14);
INSERT INTO Creation values ('978-83-62478-89-7', 'Gwiazd Naszych Wina', 2013, 34.90, 312, 'Polish', 1, 7);
INSERT INTO Creation values ('978-83-80316-56-0', 'Zanim się pojawiłeś', 2016, 29.90, NULL, 'Polish', 2, 10);
 
INSERT INTO Copies values (1, 'in stock', 3, 4, 5, '978-18-54377-29-6');
INSERT INTO Copies values (2, 'in stock', 19, 9, 5, '978-83-24032-76-1');
INSERT INTO Copies values (3, 'in stock', 3, 6, 4, '978-83-82156-84-3');
INSERT INTO Copies values (4, 'in stock', 3, 7, 4, '978-83-72723-91-8');
INSERT INTO Copies values (5, 'in stock', 3, 4, 5, '978-83-75174-48-9');
INSERT INTO Copies values (6, 'in stock', 4, 3, 4, '978-83-66967-43-4');
INSERT INTO Copies values (7, 'in stock', 2, 2, 5, '978-83-82660-91-3');
INSERT INTO Copies values (8, 'in stock', 3, 1, 3, '978-83-64481-72-7');
INSERT INTO Copies values (9, 'in stock', 6, 1, 3, '978-00-07350-81-0');
INSERT INTO Copies values (10, 'in stock', 7, 1, 3, '978-00-07350-81-0');
INSERT INTO Copies values (11, 'in stock', 3, 5, 3, '978-83-82894-58-5');
INSERT INTO Copies values (12, 'in stock', 15, 2, 6, '978-15-29029-58-1');
INSERT INTO Copies values (13, 'in stock', 10, 9, 7, '978-18-54377-29-6');
INSERT INTO Copies values (14, 'in stock', 11, 4, 10, '978-18-54377-29-6');
INSERT INTO Copies values (15, 'in stock', 6, 1, 2, '978-83-24589-88-3');
INSERT INTO Copies values (16, 'in stock', 5, 3, 2, '978-83-27415-42-4');
INSERT INTO Copies (COPY_NUMBER, number_of_place_on_shelfREF, number_of_shelfREF, number_of_rackREF, ISBNREF) 
	values (17, 3, 4, 2, '978-18-54377-29-6');
INSERT INTO Copies (COPY_NUMBER, number_of_place_on_shelfREF, number_of_shelfREF, number_of_rackREF, ISBNREF) 
	values (18, 9, 4, 21, '978-83-62478-89-7');
INSERT INTO Copies (COPY_NUMBER, number_of_place_on_shelfREF, number_of_shelfREF, number_of_rackREF, ISBNREF) 
	values (19, 13, 4, 21, '978-83-75780-63-5');
INSERT INTO Copies (COPY_NUMBER, number_of_place_on_shelfREF, number_of_shelfREF, number_of_rackREF, ISBNREF) 
	values (20, 3, 4, 21, '978-83-75780-63-5');
INSERT INTO Copies (COPY_NUMBER, number_of_place_on_shelfREF, number_of_shelfREF, number_of_rackREF, ISBNREF) 
	values (21, 1, 3, 21, '978-83-80316-56-0');

INSERT INTO Employees values (1, 'Alicja', 'Tomaszewska', '2001-07-29');
INSERT INTO Employees values (2, 'Mikołaj', 'Jedyny', '1997-05-13');
INSERT INTO Employees values (3, 'Julita', 'Bussler', '1993-06-17');
INSERT INTO Employees values (4, 'Kondrad', 'Dziekański', '2002-06-09');
INSERT INTO Employees values (5, 'Wiktor', 'Gruby', '2000-10-18');
INSERT INTO Employees values (6, 'Krzysztof', 'Sarna', '1976-05-03');
INSERT INTO Employees values (7, 'Piotr', 'Wrona', '1988-11-12');
INSERT INTO Employees values (8, 'Wiktoria', 'Kula', '1990-12-01');
INSERT INTO Employees values (9, 'Aneta', 'Róża', '2003-7-25');
INSERT INTO Employees values (10, 'Aleksander', 'Baliński', '2003-10-31');

INSERT INTO Borrower values (1, 'Patrycja', 'Cajch', '2002-04-04', '2022-12-09', 'Bydgoska,2,46,Gdańsk,Poland,80-180', 'pzajch@gmail.com', '376462918', 'open', NULL);
INSERT INTO Borrower values	(2, 'Vanessa', 'Bieszka', '2002-02-15', '2020-10-04', 'Karmelowa,3,-,Pruszcz Gdański,Poland,83-004', 'vanbie@gmail.com', '564378291', 'open', NULL );
INSERT INTO Borrower values	(3, 'Patryk', 'Kuśnierz', '2000-11-23', '2010-10-13', 'Karmelowa,3,-,Pruszcz Gdański,Poland,83-004', 'pattkuz@gmail.com', '648204571', 'open', NULL );
INSERT INTO Borrower values	(4, 'Remigiusz', 'Kowalski', '2014-10-20', '2021-05-11', 'Przytulna,36,a,Przyjaźń,Poland,86-140', NULL, '754720582', 'open', NULL );
INSERT INTO Borrower values	(5, 'Sonia', 'Wysocka', '1995-03-15', '2005-06-27', 'Azaliowa,4,48,Gdynia,Poland,81-199', 'sonwy@wp.pl', '875342810', 'closed', '2014-06-17');
INSERT INTO Borrower values	(6, 'Karol', 'Kożuchowski', '1997-11-03', '2011-08-14', 'Jesionowa,20,25,Gdańsk,Poland,80-156', 'kożuszek@op.pl', '321550762', 'open', NULL);
INSERT INTO Borrower values	(7, 'Sebastian', 'Czerniak', '1978-10-22', '2015-05-29', 'Maślakowa,3,-,Kolbudy,Poland,83-050', 'sscze@gmail.com', '249026175', 'open', NULL);
INSERT INTO Borrower (BORROWER_ID_NUMBER, name, surname, date_of_birth, date_of_enrollment, address, email, contact_number, state_of_account) 
	values	(8, 'Marzena', 'Marcholewska', '1987-09-17', '2014-03-10', 'Karmazynowa,8,12,Gdańsk,Polaand,80-180', 'maerch@wp.pl', '308263204' , 'open');
INSERT INTO Borrower values	(9, 'Kinga', 'Karski', '1999-02-14', '2018-04-13', 'Świętojańska,10,5,Gdańsk,Poland,80-120', 'kingaaa@wp.pl', '938725499' , 'closed', '2020-04-20');
INSERT INTO Borrower (BORROWER_ID_NUMBER, name, surname, date_of_birth, date_of_enrollment, address, email, contact_number, state_of_account) 
	values	(10, 'Roman', 'Karski', '1997-07-19', '2017-05-19', 'Świętojańska,10,5,Gdańsk,Poland,80-120', 'karrrom@wp.pl', '647205978', 'open');

INSERT INTO Proxy values (1, 'Aneta', 'Kowalska', '387145613', NULL, '1985-11-12');
INSERT INTO Proxy values (2, 'Krzysztof', 'Kowalski', '137469261', NULL, '1984-03-12');
INSERT INTO Proxy values (3, 'Anna', 'Kowalska', '237826192', NULL, '2000-05-13');
INSERT INTO Proxy values (4, 'Anna', 'Rwa-Tyszka', '276781819', 'tysz_rwa12@gmail.com', '1976-09-30');
INSERT INTO Proxy values (5, 'Urszula', 'Habrówna', '834291934', 'habur@wp.pl', '2002-10-13');
INSERT INTO Proxy values (6, 'Wojciech', 'Karski', '281431570', 'wojciech.uznan@gmail.com', '1990-12-30');
INSERT INTO Proxy values (7, 'Emilia', 'Kuśnierz', '923744578', 'em.uzn.ilia@gmail.com', '1991-10-18');
INSERT INTO Proxy values (8, 'Tomasz', 'Rodge', '177254517', NULL, '2002-11-14');
INSERT INTO Proxy values (9, 'Weronika', 'Świeczkowska', '888654299', 'wyska@wp.pl', '1995-03-15');
INSERT INTO Proxy values (10, 'Tamara', 'Wrona', '183723210', 'wronka.tamka@gmail.com', '1999-09-09');

INSERT INTO Reservation values (1, '2022-12-08 12:06', '2022-12-15', 1);
INSERT INTO Reservation values (2, '2022-12-06 10:07', '2022-12-10', 5);
INSERT INTO Reservation values (3, '2022-12-01 19:59', '2022-12-08', 6);
INSERT INTO Reservation values (4, '2022-12-10 09:33', '2022-12-17', 17);
INSERT INTO Reservation values (5, '2022-12-04 12:10', '2022-12-11', 13);
INSERT INTO Reservation values (6, '2022-12-04 08:19', '2022-12-11', 21);
INSERT INTO Reservation values (7, '2022-12-04 13:45', '2022-12-11', 12);
INSERT INTO Reservation values (8, '2022-12-07 15:28', '2022-12-14', 1);
INSERT INTO Reservation values (9, '2022-12-08 17:03', '2022-12-15', 9);
INSERT INTO Reservation values (10, '2022-12-08 16:34', '2022-12-15', 4);

INSERT INTO Rental values (1, '2022-10-01', '2022-10-31', NULL, 2, 1, 10, NULL);
INSERT INTO Rental values (2, '2022-10-01', '2022-10-31', '2022-11-14', 3, 4, 9, NULL);
INSERT INTO Rental values (3, '2022-10-02', '2022-11-01', '2022-11-07', 21, 8, 6, NULL);
INSERT INTO Rental values (4, '2022-10-03', '2022-11-02', NULL, 18, 10, 1, NULL);
INSERT INTO Rental values (5, '2022-10-03', '2022-11-02', '2022-12-02', 8, 10, 1, 7);
INSERT INTO Rental values (6, '2022-11-05', '2022-12-05', NULL, 14, 2, 2, NULL);
INSERT INTO Rental values (7, '2022-11-05', '2022-12-05', '2022-12-06', 8, 4, 2, 8);
INSERT INTO Rental values (8, '2022-11-05', '2022-12-05', '2022-12-09', 6, 6, 2, 8);
INSERT INTO Rental values (9, '2022-11-05', '2022-12-05', NULL, 16, 1, 2, NULL);
INSERT INTO Rental values (10, '2022-11-05', '2022-12-05', '2022-12-09', 3, 2, 2, 8);
INSERT INTO Rental values (11, '2022-12-07', '2023-01-06', '2022-12-09', 5, 8, 4, 9);
INSERT INTO Rental values (12, '2022-12-07', '2023-01-06', '2022-12-10', 7, 7, 3, 9);
INSERT INTO Rental values (13, '2022-12-08', '2023-01-07', '2022-12-10', 1, 4, 4, 3);
INSERT INTO Rental values (14, '2022-12-09', '2023-01-08', NULL, 8, 3, 1, NULL);
INSERT INTO Rental values (15, '2022-12-10', '2023-01-09', NULL, 10, 2, 5, NULL);
INSERT INTO Rental values (16, '2022-12-10', '2023-01-09', NULL, 20, 1, 5, NULL);
INSERT INTO Rental values (17, '2022-12-10', '2023-01-09', NULL, 12, 6, 5, NULL);
INSERT INTO Rental values (18, '2022-12-10', '2023-01-09', NULL, 19, 8, 5, NULL);
INSERT INTO Rental (RENTAL_ID, date_of_rent, due_date, return_date, CopyREF, BorrowerREF, given_by_Employee_ID)
	values (19, '2022-12-10', '2023-01-09', NULL, 11, 7, 5);

INSERT INTO Debt values	(1, 32.64, 'unpaid', NULL, 1);
INSERT INTO Debt values	(2, 14.00, 'paid', 'cash', 2);
INSERT INTO Debt values	(3, 7.50, 'paid', 'card', 3);
INSERT INTO Debt values	(4, 10.50, 'unpaid', NULL, 4);
INSERT INTO Debt values	(5, 15.50, 'paid', 'card', 5);
INSERT INTO Debt values	(6, 8.50, 'unpaid', NULL, 6);
INSERT INTO Debt values	(7, 0.20, 'paid', 'cash', 7);
INSERT INTO Debt values	(8, 6.50, 'paid', 'card', 8);
INSERT INTO Debt values	(9, 5.20, 'unpaid', NULL, 9);
INSERT INTO Debt values	(10, 5.40, 'paid', 'card', 10);

INSERT INTO Written values (1,6);
INSERT INTO Written values (2,2);
INSERT INTO Written values (3,5);
INSERT INTO Written values (4,7);
INSERT INTO Written values (5,1);
INSERT INTO Written values (6,3);
INSERT INTO Written values (7,2);
INSERT INTO Written values (8,2);
INSERT INTO Written values (9,4);
INSERT INTO Written values (10,2);
INSERT INTO Written values (13,9);
INSERT INTO Written values (14,8);
INSERT INTO Written values (15,10);

INSERT INTO Containing values (1,'978-18-54377-29-6');
INSERT INTO Containing values (2,'978-18-54377-29-6');
INSERT INTO Containing values (3,'978-83-72723-91-8');
INSERT INTO Containing values (4,'978-83-72723-91-8');
INSERT INTO Containing values (5,'978-83-72723-91-8');
INSERT INTO Containing values (6,'978-83-72723-91-8');
INSERT INTO Containing values (7,'978-83-24032-76-1');
INSERT INTO Containing values (8,'978-83-24032-76-1');
INSERT INTO Containing values (9,'978-83-24032-76-1');
INSERT INTO Containing values (10,'978-83-24032-76-1');

INSERT INTO Created values (11, 1);
INSERT INTO Created values (11, 2);
INSERT INTO Created values (12, 3);
INSERT INTO Created values (12, 4);
INSERT INTO Created values (12, 5);
INSERT INTO Created values (12, 6);
INSERT INTO Created values (13, 7);
INSERT INTO Created values (13, 8);
INSERT INTO Created values (13, 9);
INSERT INTO Created values (13, 10);

INSERT INTO ProxyBorrower values (1, 4);
INSERT INTO ProxyBorrower values (2, 4);
INSERT INTO ProxyBorrower values (3, 4);
INSERT INTO ProxyBorrower values (4, 7);
INSERT INTO ProxyBorrower values (5, 2);
INSERT INTO ProxyBorrower values (6, 10);
INSERT INTO ProxyBorrower values (7, 3);
INSERT INTO ProxyBorrower values (8, 1);
INSERT INTO ProxyBorrower values (9, 10);
INSERT INTO ProxyBorrower values (10, 1);

SELECT * FROM Book;
SELECT * FROM Written;
DELETE FROM Book WHERE BOOK_ID = 8;
SELECT * FROM Book;
SELECT * FROM Written;
UPDATE Book SET BOOK_ID = 77 WHERE BOOK_ID = 7;
SELECT * FROM Book;
SELECT * FROM Written;