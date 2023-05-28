INSERT INTO school (school_name, postal_code, city, phone, email, principal_name, operator_name)
VALUES ('Example School', '12345', 'New York', '1234567890', 'example@email.com', 'John Smith', 'Jane Doe'),
       ('Example School2', '12342', 'New York2', '1234567892', 'example@email.com2', 'John Smith2', 'Jane Doe2'),
       ('Example School3', '12343', 'New York3', '1234567893', 'example@email.com3', 'John Smith3', 'Jane Doe3');

INSERT INTO operator (operator_name, operator_surname, operator_age, operator_postal_code, operator_phone, operator_email, operator_sex, school_id) 
VALUES ('Dierdre', 'Millett', 33, 15151, '697816423', 'dmillett0@latimes.com', 'F', 5562),
       ('Miller', 'Maunton', 64, 23421, '697816424', 'mmaunton1@cpanel.net', 'M', 5563),
       ('Emmy', 'Klima', 27, 54231, '697816425', 'eklima2@theguardian.com', 'F', 5564);

INSERT INTO BOOK (ISBN, title, publisher, writer, num_of_pages, summary, available_copies, category, language_of_book, key_word)
VALUES  ('167610547-6', '1984', 'Macmillan Publishers', 'Ettie Grinley', 705, 'in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum', 79, 'Drama|Film-Noir', 'Haitian Creole', 'quis');
        ('360546962-0', 'Brave New World', 'Springer Nature', 'Leon Towey', 47, 'justo morbi ut odio cras mi pede malesuada in imperdiet', 48, 'Action|Crime|Horror|Mystery|Thriller', 'Burmese', 'odio');
        ('702442664-0', 'Animal Farm', 'Princeton University Press', 'Brandtr Collington', 600, 'felis donec semper sapien a libero nam dui proin leo', 72, 'Drama', 'Thai', 'justo');
        ('058619755-9', 'The Great Gatsby', 'Riverhead Books', 'Magdalene Moxted', 126, 'imperdiet et commodo vulputate justo in blandit ultrices enim lorem', 34, 'Action|Comedy', 'Māori', 'eleifend');
        ('325485957-X', 'The Hobbit', 'Wiley', 'Fremont Childs', 260, 'justo in blandit ultrices enim lorem ipsum dolor sit amet', 81, 'Action|Adventure|Fantasy', 'Japanese', 'at');
        ('543691799-2', 'The Lord of the Rings', 'John Wiley & Sons', 'Alexandre Meddings', 460, 'risus praesent lectus vestibulum quam sapien varius ut blandit non', 39, 'Romance|Sci-Fi', 'Papiamento', 'potenti');
        ('843154006-0', 'The Great Gatsby', 'Hachette Book Group', 'Abby Crisford', 443, 'nulla pede ullamcorper augue a suscipit nulla elit ac nulla', 15, 'Western', 'Italian', 'sed');
        ('275576468-6', 'Animal Farm', 'Wiley', 'Clari Attlee', 256, 'congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae', 73, 'Documentary', 'Filipino', 'adipiscing');
        ('775868174-3', 'The Great Gatsby', 'University of Chicago Press', 'Shamus Rocco', 667, 'quam nec dui luctus rutrum nulla tellus in sagittis dui', 65, 'Drama', 'Chinese', 'eget');
        ('300124155-1', 'Animal Farm', 'Knopf Doubleday Publishing Group', 'Ellswerth Olliar', 390, 'iaculis justo in hac habitasse platea dictumst etiam faucibus cursus', 65, 'Action|Adventure|Thriller', 'Swati', 'interdum');
        ('229711790-6', 'The Catcher in the Rye', 'HarperCollins', 'Irvine Dye', 752, 'posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti', 90, 'Comedy', 'Portuguese', 'vestibulum');
        ('003866714-2', 'Pride and Prejudice', 'Penguin Books', 'Gustavus Gumb', 73, 'at velit eu est congue elementum in hac habitasse platea', 58, 'Drama', 'Sotho', 'nam');
        ('904042493-4', 'Pride and Prejudice', 'Springer Nature', 'Hulda Carrel', 245, 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus', 55, 'Drama', 'Georgian', 'natoque');
        ('731576212-4', 'The Catcher in the Rye', 'Hachette Book Group', 'Lacey Abels', 442, 'vel nulla eget eros elementum pellentesque quisque porta volutpat erat', 73, 'Action|Comedy', 'Swati', 'habitasse');
        ('448582639-2', 'Brave New World', 'John Wiley & Sons', 'Tabbatha Pryor', 36, 'tempus sit amet sem fusce consequat nulla nisl nunc nisl', 65, 'Horror', 'Estonian', 'porttitor');
        ('194526964-2', 'The Great Gatsby', 'St. Martin''s Press', 'Cristian Chue', 447, 'mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus', 17, 'Action|Adventure|Drama|Fantasy', 'Malay', 'varius');
        ('310182772-8', 'The Great Gatsby', 'Cambridge University Press', 'Mildred Shergill', 44, 'congue risus semper porta volutpat quam pede lobortis ligula sit', 5, 'Animation|Comedy|Fantasy|Musical', 'Kashmiri', 'elit');
        ('087458072-2', 'The Lord of the Rings', 'Wiley-Blackwell', 'Loise Straniero', 430, 'amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque', 3, 'Adventure|Fantasy', 'English', 'sapien');
        ('917955969-7', 'The Great Gatsby', 'Springer Nature', 'Elspeth Dawidowitsch', 793, 'in leo maecenas pulvinar lobortis est phasellus sit amet erat', 3, 'Crime|Drama|Film-Noir|Thriller', 'Dutch', 'platea');
        ('389845874-1', 'Brave New World', 'Macmillan Publishers', 'Lyndsey Hauxby', 798, 'faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus', 31, 'Action|Horror', 'Lao', 'integer');
        ('625217322-3', 'The Catcher in the Rye', 'Palgrave Macmillan', 'Warde Hebard', 683, 'cum sociis natoque penatibus et magnis dis parturient montes nascetur', 99, 'Drama', 'Assamese', 'nascetur');
        ('018409099-7', 'The Hobbit', 'University of Michigan Press', 'Ginny Fader', 303, 'iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate', 31, '(no genres listed)', 'Hebrew', 'luctus');
        ('033139384-0', 'To Kill a Mockingbird', 'John Wiley & Sons', 'Therine Goldie', 247, 'hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis', 84, 'Sci-Fi', 'Hindi', 'quam');
        ('052809696-6', 'The Lord of the Rings', 'Scribner', 'Aretha Jansen', 242, 'id lobortis convallis tortor risus dapibus augue vel accumsan tellus', 6, 'Horror|Sci-Fi', 'Irish Gaelic', 'ultrices');
        ('855597363-5', 'To Kill a Mockingbird', 'Knopf Doubleday Publishing Group', 'Nanny Beevor', 146, 'ut mauris eget massa tempor convallis nulla neque libero convallis', 76, 'Comedy|Drama', 'Persian', 'euismod');
        ('681315366-8', 'The Lord of the Rings', 'Hachette Book Group', 'Giustino Ancketill', 191, 'augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent', 12, 'Drama|Horror|Mystery|Thriller', 'Telugu', 'condimentum');
        ('717802934-X', 'The Catcher in the Rye', 'Princeton University Press', 'Gideon Drewitt', 707, 'dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus', 19, 'Western', 'Arabic', 'sodales');
        ('145829020-4', 'The Catcher in the Rye', 'Hachette Book Group', 'Christye Masse', 214, 'vel nulla eget eros elementum pellentesque quisque porta volutpat erat', 35, 'Comedy|Drama', 'Irish Gaelic', 'curabitur');
        ('319306365-7', 'The Catcher in the Rye', 'Princeton University Press', 'Adina Tebbett', 763, 'lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper', 11, 'Western', 'Marathi', 'nec');
        ('929623927-3', 'The Great Gatsby', 'Riverhead Books', 'Bernardo Rothschild', 382, 'elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor', 58, 'Comedy|Romance', 'Hindi', 'neque');
        ('209734672-3', 'Pride and Prejudice', 'HarperCollins', 'Fayre Luke', 307, 'adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus', 69, '(no genres listed)', 'Northern Sotho', 'cursus');
        ('492424719-7', 'Lord of the Flies', 'Cambridge University Press', 'Karleen Fullylove', 397, 'suspendisse potenti cras in purus eu magna vulputate luctus cum', 59, 'Documentary', 'Dhivehi', 'faucibus');
        ('962089441-3', 'Brave New World', 'McGraw-Hill Education', 'Joey Mangam', 771, 'sapien non mi integer ac neque duis bibendum morbi non', 56, 'Drama', 'West Frisian', 'sociis');
        ('816225051-4', 'The Catcher in the Rye', 'McGraw-Hill Education', 'Zack Spriddle', 274, 'eget tempus vel pede morbi porttitor lorem id ligula suspendisse', 39, 'Drama', 'German', 'convallis');
        ('666875754-5', 'The Lord of the Rings', 'Columbia University Press', 'Sebastien Hartell', 318, 'nibh in quis justo maecenas rhoncus aliquam lacus morbi quis', 87, 'Adventure|Documentary|Drama', 'Kannada', 'vestibulum');
        ('865431520-2', 'The Lord of the Rings', 'Knopf Doubleday Publishing Group', 'Nicolette Dobbinson', 272, 'lectus vestibulum quam sapien varius ut blandit non interdum in', 36, 'Documentary', 'Zulu', 'aliquam');
        ('843728362-0', 'Brave New World', 'University of Chicago Press', 'Alecia Mycock', 559, 'sapien ut nunc vestibulum ante ipsum primis in faucibus orci', 85, 'Drama|Romance|Western', 'Tetum', 'eget');
        ('805693828-1', 'The Lord of the Rings', 'Oxford University Press', 'Hermine Vasilchikov', 737, 'volutpat quam pede lobortis ligula sit amet eleifend pede libero', 40, 'Horror|Thriller', 'Papiamento', 'magnis');
        ('984479612-1', 'To Kill a Mockingbird', 'Bloomsbury Academic', 'Carlyle Eldon', 772, 'aliquet massa id lobortis convallis tortor risus dapibus augue vel', 44, 'Drama|Romance', 'Greek', 'pellentesque');
        ('353211523-9', 'The Lord of the Rings', 'Farrar', 'Vanessa Barkley', 220, 'tempor convallis nulla neque libero convallis eget eleifend luctus ultricies', 23, 'Thriller', 'Somali', 'suspendisse');
        ('964673338-7', 'Animal Farm', 'Riverhead Books', 'Laney Frizzell', 225, 'ultrices libero non mattis pulvinar nulla pede ullamcorper augue a', 49, 'Drama', 'Persian', 'in');
        ('376173598-7', 'The Catcher in the Rye', 'Harvard University Press', 'Bel Gilbee', 721, 'donec odio justo sollicitudin ut suscipit a feugiat et eros', 39, 'Drama|Western', 'Kyrgyz', 'hac');
        ('611353650-5', 'The Hobbit', 'Scribner', 'Melvin Fulkes', 275, 'lacus purus aliquet at feugiat non pretium quis lectus suspendisse', 36, 'Crime|Thriller', 'Indonesian', 'vitae');
        ('098836022-5', 'Pride and Prejudice', 'Columbia University Press', 'Niki Durham', 756, 'bibendum felis sed interdum venenatis turpis enim blandit mi in', 24, 'Drama|Romance', 'Greek', 'et');
        ('286528243-0', '1984', 'Macmillan Publishers', 'Deeyn Beverage', 376, 'non lectus aliquam sit amet diam in magna bibendum imperdiet', 52, 'Comedy|Crime|Mystery|Thriller', 'Tamil', 'aliquet');
        ('112497832-1', 'The Lord of the Rings', 'Oxford University Press', 'William Sibun', 558, 'vestibulum ac est lacinia nisi venenatis tristique fusce congue diam', 95, 'Drama|Musical', 'Aymara', 'tempus');
        ('388835201-0', 'Pride and Prejudice', 'Brown and Company', 'Sonia Slym', 409, 'non interdum in ante vestibulum ante ipsum primis in faucibus', 90, 'Comedy|Drama|Romance', 'English', 'pellentesque');
        ('724503225-4', 'Pride and Prejudice', 'Elsevier', 'Myrta Quare', 57, 'lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus', 36, 'Documentary', 'Khmer', 'euismod');
        ('815852017-0', 'The Lord of the Rings', 'Oxford University Press', 'Glenn Upcott', 490, 'rutrum at lorem integer tincidunt ante vel ipsum praesent blandit', 27, 'Thriller', 'Tswana', 'erat');
        ('652548645-9', 'The Hobbit', 'Springer', 'Hansiain Birdsey', 101, 'eget massa tempor convallis nulla neque libero convallis eget eleifend', 60, 'Drama|Romance', 'Fijian', 'vestibulum');


INSERT INTO library_user (username, user_password, user_type, user_name, user_surname, user_email, user_age, user_sex, user_class) 
VALUES  
        ('groswarn0', 'jKz2cJ', 'student','Galvin', 'Roswarn', 'groswarn0@fotki.com', 14, 'Male', 6),
        ('gmars1', 'F4E6Laij', 'student', 'Giselle', 'Mars', 'gmars1@cyberchimps.com', 16, 'Female', 11),
        ('bdelias2', 'jVw9TtT', 'student', 'Baryram', 'D''Elias', 'bdelias2@hp.com', 13, 'Male', 2),
        ('lblampy3', 'AT27tnTar', 'student', 'Leslie', 'Blampy', 'lblampy3@cmu.edu', 11, 'Female', 4),
        ('joronan4', 'm9LdYwwJ', 'student', 'Jarrod', 'O'' Ronan', 'joronan4@nps.gov', 12, 'Male', 6),
        ('wbollard5', '5aSC2ksi8d', 'student', 'Wang', 'Bollard', 'wbollard5@chron.com', 9, 'Male', 10),
        ('gjaegar6', 'UEBUqxNd1Tkk', 'student', 'Gwendolyn', 'Jaegar', 'gjaegar6@europa.eu', 12, 'Female', 7),
        ('nstark7', 'LHcD07sqL', 'student', 'Nathanial', 'Stark', 'nstark7@ed.gov', 7, 'Male', 10),
        ('gburgott8', '2HEz0TLO4w5Z', 'student', 'Guss', 'Burgott', 'gburgott8@imgur.com', 17, 'Male', 7),
        ('csyce9', 'k7J5rJn', 'student', 'Charyl', 'Syce', 'csyce9@jalbum.net', 10, 'Female', 2),
        ('mmiddasa', 'CNJxX0', 'student', 'Margeaux', 'Middas', 'mmiddasa@go.com', 9, 'Female', 4),
        ('hdantuonib', 'NXXr63U', 'student', 'Hanan', 'D''Antuoni', 'hdantuonib@sohu.com', 9, 'Male', 1),
        ('alepruvostc', 'B8hTdTjVn', 'student', 'Anna-diana', 'Le Pruvost', 'alepruvostc@google.com.hk', 14, 'Female', 9),
        ('tvickerstaffd', 'cOcgjDEKa5', 'student', 'Trueman', 'Vickerstaff', 'tvickerstaffd@soundcloud.com', 12, 'Male', 10),
        ('mferreiroe', 'cqg1DheGJ', 'student', 'Moria', 'Ferreiro', 'mferreiroe@ameblo.jp', 10, 'Female', 7),
        ('bcarhartf', 'HFj8fNa', 'student', 'Beryl', 'Carhart', 'bcarhartf@nydailynews.com', 14, 'Female', 4),
        ('adivallg', 'zoGCVp', 'student', 'Aurea', 'Divall', 'adivallg@cornell.edu', 9, 'Female', 12),
        ('ycocheth', '3IeK0Q', 'student', 'Yankee', 'Cochet', 'ycocheth@list-manage.com', 8, 'Male', 3),
        ('jwilderi', '9GHfoZyUiXDP', 'student', 'Jard', 'Wilder', 'jwilderi@yellowbook.com', 12, 'Male', 8),
        ('mconsadinej', 'p009fuyeQqaM', 'student', 'Martguerita', 'Consadine', 'mconsadinej@timesonline.co.uk', 13, 'Female', 1),
        ('jyoudek', 'IFkWgRsiox', 'student', 'Jacqueline', 'Youde', 'jyoudek@smugmug.com', 17, 'Female', 12),
        ('rmingayl', 'VWDXjI', 'student', 'Russell', 'Mingay', 'rmingayl@mail.ru', 11, 'Male', 6),
        ('fdipietrom', 'WAnTJo2PXQh', 'student', 'Fran', 'Di Pietro', 'fdipietrom@privacy.gov.au', 14, 'Male', 2),
        ('ressonn', 'WYhxV5kwHg5', 'student', 'Reginauld', 'Esson', 'ressonn@ibm.com', 15, 'Male', 10),
        ('dspallso', 'rcFhXtcJhUjc', 'student', 'Darrell', 'Spalls', 'dspallso@blogs.com', 10, 'Male', 5),
        ('vrobbingsp', 'aPConWPP0Da', 'student', 'Vikky', 'Robbings', 'vrobbingsp@domainmarket.com', 13, 'Female', 2),
        ('jjaqueminetq', 'zrnG0y2q', 'student', 'Jarrad', 'Jaqueminet', 'jjaqueminetq@prnewswire.com', 15, 'Male', 7),
        ('acloneyr', 'JrFrdu', 'student', 'Allene', 'Cloney', 'acloneyr@icio.us', 7, 'Female', 2),
        ('ebrisards', 'M7exLXysBwqz', 'student', 'Eberto', 'Brisard', 'ebrisards@aol.com', 17, 'Male', 1),
        ('bbonallickt', 'kNABqd2', 'student', 'Bale', 'Bonallick', 'bbonallickt@wunderground.com', 14, 'Male', 11),
        ('dbaudu', 'R0V5D3', 'student', 'Delmar', 'Baud', 'dbaudu@com.com', 9, 'Male', 7),
        ('crichfieldv', 'vnUJgajZyN2t', 'student', 'Cecilius', 'Richfield', 'crichfieldv@plala.or.jp', 14, 'Male', 3),
        ('vstieblerw', 'BMa8gvNR16', 'student', 'Victor', 'Stiebler', 'vstieblerw@state.gov', 9, 'Male', 8),
        ('amcnivenx', 'c3ZAGS', 'student', 'Arnoldo', 'McNiven', 'amcnivenx@yale.edu', 17, 'Male', 9),
        ('phowelsy', 'oJ5Dtii6o', 'student', 'Patrizius', 'Howels', 'phowelsy@imageshack.us', 16, 'Male', 7),
        ('kcinnamondz', 'UbM867AG', 'student', 'Kenyon', 'Cinnamond', 'kcinnamondz@qq.com', 13, 'Male', 1),
        ('rhallgath10', 'daprWHJ92d3n', 'student', 'Rudy', 'Hallgath', 'rhallgath10@mashable.com', 9, 'Male', 2),
        ('gdugall11', 'zwkBnN', 'student', 'Gradey', 'Dugall', 'gdugall11@usa.gov', 8, 'Male', 5),
        ('cworsnup12', 'xA7SrThAy8', 'student', 'Camile', 'Worsnup', 'cworsnup12@economist.com', 18, 'Female', 6),
        ('esteane13', 'Yvkn0NtcFfN7', 'student', 'Emmerich', 'Steane', 'esteane13@gravatar.com', 7, 'Male', 2),
        ('ldecourtney14', 'QdBNZVcfAr', 'student', 'Loydie', 'De Courtney', 'ldecourtney14@instagram.com', 17, 'Male', 9),
        ('mkobel15', 'MY3jvN5Xp', 'student', 'Madelyn', 'Kobel', 'mkobel15@1688.com', 9, 'Female', 11),
        ('klangston16', 'c3UY3zl', 'student', 'Kimberlyn', 'Langston', 'klangston16@bloglines.com', 11, 'Female', 5),
        ('wmatzen17', 'BrgEYgMcO', 'student', 'Welby', 'Matzen', 'wmatzen17@usa.gov', 9, 'Male', 7),
        ('kiannazzi18', 'vQbkTvTCG5X', 'student', 'Kalie', 'Iannazzi', 'kiannazzi18@imgur.com', 9, 'Female', 11),
        ('rburth19', 'hP3sJIMJSjs0', 'student', 'Rickie', 'Burth', 'rburth19@apple.com', 12, 'Male', 8),
        ('tdyke1a', 'qyzRf7s', 'student', 'Tully', 'Dyke', 'tdyke1a@forbes.com', 8, 'Male', 9),
        ('rjackling1b', 'JXyUM6UhXNX1', 'student', 'Rinaldo', 'Jackling', 'rjackling1b@webnode.com', 7, 'Male', 11),
        ('jkiossel1c', 'djbrr3wkwouV', 'student', 'Joli', 'Kiossel', 'jkiossel1c@ucoz.ru', 9, 'Female', 12),
        ('slaxon1d', 'ix53NFtaJL2t', 'student', 'Syman', 'Laxon', 'slaxon1d@ebay.com', 8, 'Male', 7), 
        ('mclackson0', 'FX1QZFPbg0GO', 'teacher', 'Marchall', 'Clackson', 'mclackson0@live.com', 47, 'Male', 10),
        ('rnajera1', 'cFjlWCXsh', 'teacher', 'Rosabelle', 'Najera', 'rnajera1@thetimes.co.uk', 51, 'Female', 11),
        ('aparks2', '8PqPbZXj9fH', 'teacher', 'Alan', 'Parks', 'aparks2@wikimedia.org', 62, 'Male', 5),
        ('tmeo3', 'xZkzO5525', 'teacher', 'Titus', 'Meo', 'tmeo3@wordpress.org', 26, 'Male', 11),
        ('bnussen4', 'nWcLn6YSC', 'teacher', 'Barde', 'Nussen', 'bnussen4@dailymotion.com', 57, 'Male', 10),
        ('msickamore5', 'KDD29p2A', 'teacher', 'Miller', 'Sickamore', 'msickamore5@indiatimes.com', 47, 'Male', 4),
        ('gstoggles6', 'RISenZ6cZ', 'teacher', 'Gaynor', 'Stoggles', 'gstoggles6@ucsd.edu', 59, 'Female', 7),
        ('amostyn7', 'Vc8IoGZQ', 'teacher', 'Anitra', 'Mostyn', 'amostyn7@opensource.org', 54, 'Female', 7),
        ('vkonrad8', 'mougbvoVcJud', 'teacher', 'Valerye', 'Konrad', 'vkonrad8@bbc.co.uk', 63, 'Female', 4),
        ('bconnue9', 'oJGn8hY', 'teacher', 'Brunhilde', 'Connue', 'bconnue9@4shared.com', 59, 'Female', 4);