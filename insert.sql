INSERT INTO school (school_name, postal_code, city, phone, email, principal_name, operator_name)
VALUES ('Example School', '12345', 'New York', '1234567890', 'example@email.com', 'John Smith', 'Jane Doe'),
       ('Example School2', '12342', 'New York2', '1234567892', 'example@email.com2', 'John Smith2', 'Jane Doe2'),
       ('Example School3', '12343', 'New York3', '1234567893', 'example@email.com3', 'John Smith3', 'Jane Doe3');

DELETE FROM administrator;
INSERT INTO administrator (administrator_id, administrator_username, administrator_password, administrator_name, administrator_surname, administrator_age, administrator_phone, administrator_postal_code, administrator_email, administrator_sex)
VALUES (1, 'gggkoloko', 'ellas9#d', 'Georgios', 'Kolokotronis', 284, '1182111821', '12345', 'gerostoumoria@elladamono.gr', 'M');

INSERT INTO BOOK (ISBN, title, publisher, writer, num_of_pages, summary, language_of_book)
VALUES  ('603020091-7', 'The Picture of Dorian Gray', 'Penguin Random House', 'Meggie Dannehl', 724, 'omnis dolor repellendus', 'Belarusian'),
		('613640324-2', 'The Call of the Wild', 'Wolters Kluwer', 'Meggie Dannehl', 221, 'similique sunt in culpa qui officia', 'Danish'),
		('498161114-5', 'Harry Potter and the Half-Blood Prince', 'John Wiley & Sons', 'Meggie Dannehl', 997, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident', 'Hebrew'),
		('459321124-7', 'The War of the Worlds', 'Macmillan Publishers', 'Meggie Dannehl', 832, 'Nam libero tempore', 'Kazakh'),
		('133701989-5', 'The Island of Dr. Moreau', 'Cengage Learning', 'Meggie Dannehl', 642, 'Itaque earum rerum hic tenetur a sapiente delectus', 'Macedonian'),
		('956553982-3', 'The Hunger Games', 'Springer Nature', 'Meggie Dannehl', 232, 'Quis nostrud exercitation ullamco', 'Swahili'),
		('577364603-X', 'The Wind in the Willows', 'Bloomsbury Publishing', 'Meggie Dannehl', 221, 'Consectetur', 'Fijian'),
		('731351495-6', 'The Hunger Games', 'Wolters Kluwer', 'Meggie Dannehl', 650, 'Itaque earum rerum hic tenetur a sapiente delectus', 'Albanian'),
		('048822420-9', 'The Hunger Games', 'Cambridge University Press', 'Meggie Dannehl', 270, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident', 'Croatian'),
		('668059626-2', 'Mostly Harmless', 'Pearson Education', 'Margy Skae', 959, 'ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat', 'Finnish'),
		('347186029-0', 'The Chronicles of Narnia', 'Pearson Education', 'Margy Skae', 248, 'Itaque earum rerum hic tenetur a sapiente delectus', 'Gagauz'),
		('592059327-X', 'The Catcher in the Rye', 'Oxford University Press', 'Margy Skae', 33, 'At vero eos et accusamus et iusto odio dignissimos ducimus', 'Oriya'),
		('430332205-9', 'The Call of the Wild', 'Springer Nature', 'Margy Skae', 912, 'Ut enim ad minim veniam', 'Catalan'),
		('031624416-3', 'The Picture of Dorian Gray', 'Simon & Schuster', 'Marigold Threadgold', 63, 'Quos dolores et quas molestias excepturi sint occaecati', 'Azeri'),
		('436756553-X', 'The Help', 'John Wiley & Sons', 'Celie Scoines', 766, 'Nam libero tempore', 'Northern Sotho'),
		('846118339-8', 'The Wind in the Willows', 'Springer Nature', 'Rochell Eagar', 330, 'adipisci velit', 'Dari'),
		('257004637-X', 'The Adventures of Tom Sawyer', 'Macmillan Publishers', 'Aryn Stevings', 418, 'Neque porro quisquam est', 'Irish Gaelic'),
		('165976539-0', 'Harry Potter and the Goblet of Fire', 'Elsevier', 'Claiborne Coldbath', 809, 'Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet', 'English'),
		('052223061-X', 'The Scarlet Letter', 'Macmillan Publishers', 'Ignazio Twidell', 961, 'Ut labore et dolore magna aliqua', 'Northern Sotho'),
		('182162838-1', 'Alice''s Adventures in Wonderland', 'Pearson Education', 'Estel Melin', 288, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur', 'Portuguese'),
		('854519326-2', 'The Alchemist', 'Cengage Learning', 'Merrill Lys', 833, 'Et harum quidem rerum facilis est et expedita distinctio', 'Zulu'),
		('528638252-5', 'Harry Potter and the Half-Blood Prince', 'Wolters Kluwer', 'Collette Ausher', 210, 'cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus', 'Norwegian'),
		('973950447-7', 'To Kill a Mockingbird', 'John Wiley & Sons', 'Aeriela Mackness', 921, 'Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae', 'Azeri'),
		('988672601-6', 'The Adventures of Huckleberry Finn', 'Springer Nature', 'Godard Humphery', 718, 'Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae', 'Thai'),
		('030802285-8', 'the Universe and Everything', 'Elsevier', 'Godfry Castrillo', 481, 'Nam libero tempore', 'Northern Sotho'),
		('597728931-6', 'Harry Potter and the Chamber of Secrets', 'Springer Nature', 'Reese Cressey', 224, 'Ut enim ad minim veniam', 'Quechua'),
		('058050124-8', 'The Restaurant at the End of the Universe', 'Hachette Book Group', 'Pia Habbijam', 284, 'ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat', 'Kannada'),
		('575080405-4', 'Harry Potter and the Order of Phoenix', 'Cengage Learning', 'Erinn Conws', 814, 'Nam libero tempore', 'Kannada'),
		('763911195-1', 'The Adventures of Huckleberry Finn', 'Pearson Education', 'Kesley Bohan', 919, 'ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat', 'Croatian'),
		('178908056-8', 'Pride and Prejudice', 'SAGE Publications', 'Glynnis Dannett', 929, 'omnis voluptas assumenda est', 'Tamil'),
		('967706803-2', 'The Restaurant at the End of the Universe', 'HarperCollins', 'Sybille Petrazzi', 243, 'Ut labore et dolore magna aliqua', 'Nepali'),
		('466840140-4', 'Through the Looking Glass', 'Elsevier', 'Valerye Patzelt', 714, 'Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae', 'Gujarati'),
		('896827318-9', 'The Picture of Dorian Gray', 'Wolters Kluwer', 'Jocelyne Gogie', 420, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident', 'Polish'),
		('675452482-0', 'The Island of Dr. Moreau', 'Taylor & Francis', 'Trenna Halesworth', 98, 'Sunt in culpa qui officia deserunt mollit anim', 'Indonesian'),
		('277889190-0', 'The Catcher in the Rye', 'Bloomsbury Publishing', 'Dall Quickenden', 971, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident', 'Northern Sotho'),
		('737344592-6', 'The Great Gatsby', 'John Wiley & Sons', 'Ferdy Van de Castele', 609, 'At vero eos et accusamus et iusto odio dignissimos ducimus', 'Tok Pisin'),
		('694331971-X', 'The Fault in Our Stars', 'Simon & Schuster', 'Deni Domelow', 496, 'ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat', 'Punjabi'),
		('377222920-4', 'The Wind in the Willows', 'Springer Nature', 'Tabbie de Voiels', 728, 'Consectetur', 'Malagasy'),
		('585064134-3', 'The Hitchhiker''s Guide to the Galaxy', 'HarperCollins', 'Cathrine Cantu', 932, 'ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat', 'Maltese'),
		('764028185-7', 'The Kite Runner', 'Cambridge University Press', 'Alyse Vaan', 667, 'cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus', 'New Zealand'),
		('042246729-4', 'The Wonderful Wizard of Oz', 'Macmillan Publishers', 'Nap Tailour', 859, 'Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae', 'Marathi'),
		('381129789-9', 'Harry Potter and the Philosopher''s Stone', 'Elsevier', 'Muffin Holtaway', 698, 'Ut enim ad minim veniam', 'Dari'),
		('988663019-1', 'The Adventures of Huckleberry Finn', 'McGraw-Hill Education', 'Myrtice Esilmon', 472, 'cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus', 'Bislama'),
		('188690335-2', 'the Universe and Everything', 'Oxford University Press', 'Nicholas McNeish', 314, 'Lorem ipsum dolor sit amet', 'Japanese'),
		('148184850-X', 'The Picture of Dorian Gray', 'Oxford University Press', 'Colman Sydes', 191, 'Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae', 'Hindi'),
		('811181230-2', 'Life', 'Cengage Learning', 'Carver Surman', 569, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur', 'Croatian'),
		('970287388-6', 'The Alchemist', 'Hachette Book Group', 'Laverna Valentine', 967, 'omnis voluptas assumenda est', 'Albanian'),
		('348736226-0', 'The Girl with the Dragon Tattoo', 'Bloomsbury Publishing', 'Emyle Purvey', 156, 'Ut labore et dolore magna aliqua', 'Spanish'),
		('433050464-2', 'The Fault in Our Stars', 'Wolters Kluwer', 'Ramon Abriani', 964, 'Quis nostrud exercitation ullamco', 'Yiddish'),
		('856989563-1', 'The Catcher in the Rye', 'Elsevier', 'Loree Akast', 264, 'Itaque earum rerum hic tenetur a sapiente delectus', 'Yiddish'),
		('603020091-7', 'The Picture of Dorian Gray', 'Penguin Random House', 'Meggie Dannehl', 724, 'omnis dolor repellendus', 'Belarusian'),
		('613640324-2', 'The Call of the Wild', 'Wolters Kluwer', 'Sharlene Edyson', 221, 'similique sunt in culpa qui officia', 'Danish'),
		('498161114-5', 'Harry Potter and the Half-Blood Prince', 'John Wiley & Sons', 'Barnard Snoddon', 997, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident', 'Hebrew'),
		('459321124-7', 'The War of the Worlds', 'Macmillan Publishers', 'Annabelle Gonoude', 832, 'Nam libero tempore', 'Kazakh'),
		('133701989-5', 'The Island of Dr. Moreau', 'Cengage Learning', 'Benedetta Cessford', 642, 'Itaque earum rerum hic tenetur a sapiente delectus', 'Macedonian'),
		('956553982-3', 'The Hunger Games', 'Springer Nature', 'Duff Gracewood', 232, 'Quis nostrud exercitation ullamco', 'Swahili'),
		('577364603-X', 'The Wind in the Willows', 'Bloomsbury Publishing', 'Reinaldos Deners', 221, 'Consectetur', 'Fijian'),
		('731351495-6', 'The Hunger Games', 'Wolters Kluwer', 'Margalit McHale', 650, 'Itaque earum rerum hic tenetur a sapiente delectus', 'Albanian'),
		('048822420-9', 'The Hunger Games', 'Cambridge University Press', 'Kelley Drews', 270, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident', 'Croatian'),
		('668059626-2', 'Mostly Harmless', 'Pearson Education', 'Margy Skae', 959, 'ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat', 'Finnish'),
		('347186029-0', 'The Chronicles of Narnia', 'Pearson Education', 'Marcia Bernuzzi', 248, 'Itaque earum rerum hic tenetur a sapiente delectus', 'Gagauz'),
		('592059327-X', 'The Catcher in the Rye', 'Oxford University Press', 'Fredrick Harridge', 33, 'At vero eos et accusamus et iusto odio dignissimos ducimus', 'Oriya'),
		('430332205-9', 'The Call of the Wild', 'Springer Nature', 'Launce Finley', 912, 'Ut enim ad minim veniam', 'Catalan'),
		('031624416-3', 'The Picture of Dorian Gray', 'Simon & Schuster', 'Marigold Threadgold', 63, 'Quos dolores et quas molestias excepturi sint occaecati', 'Azeri'),
		('436756553-X', 'The Help', 'John Wiley & Sons', 'Celie Scoines', 766, 'Nam libero tempore', 'Northern Sotho'),
		('846118339-8', 'The Wind in the Willows', 'Springer Nature', 'Rochell Eagar', 330, 'adipisci velit', 'Dari'),
		('257004637-X', 'The Adventures of Tom Sawyer', 'Macmillan Publishers', 'Aryn Stevings', 418, 'Neque porro quisquam est', 'Irish Gaelic'),
		('165976539-0', 'Harry Potter and the Goblet of Fire', 'Elsevier', 'Claiborne Coldbath', 809, 'Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet', 'English'),
		('052223061-X', 'The Scarlet Letter', 'Macmillan Publishers', 'Ignazio Twidell', 961, 'Ut labore et dolore magna aliqua', 'Northern Sotho'),
		('182162838-1', 'Alice''s Adventures in Wonderland', 'Pearson Education', 'Estel Melin', 288, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur', 'Portuguese'),
		('854519326-2', 'The Alchemist', 'Cengage Learning', 'Merrill Lys', 833, 'Et harum quidem rerum facilis est et expedita distinctio', 'Zulu'),
		('528638252-5', 'Harry Potter and the Half-Blood Prince', 'Wolters Kluwer', 'Collette Ausher', 210, 'cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus', 'Norwegian'),
		('973950447-7', 'To Kill a Mockingbird', 'John Wiley & Sons', 'Aeriela Mackness', 921, 'Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae', 'Azeri'),
		('988672601-6', 'The Adventures of Huckleberry Finn', 'Springer Nature', 'Godard Humphery', 718, 'Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae', 'Thai'),
		('030802285-8', 'the Universe and Everything', 'Elsevier', 'Godfry Castrillo', 481, 'Nam libero tempore', 'Northern Sotho'),
		('597728931-6', 'Harry Potter and the Chamber of Secrets', 'Springer Nature', 'Reese Cressey', 224, 'Ut enim ad minim veniam', 'Quechua'),
		('058050124-8', 'The Restaurant at the End of the Universe', 'Hachette Book Group', 'Pia Habbijam', 284, 'ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat', 'Kannada'),
		('575080405-4', 'Harry Potter and the Order of Phoenix', 'Cengage Learning', 'Erinn Conws', 814, 'Nam libero tempore', 'Kannada'),
		('763911195-1', 'The Adventures of Huckleberry Finn', 'Pearson Education', 'Kesley Bohan', 919, 'ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat', 'Croatian'),
		('178908056-8', 'Pride and Prejudice', 'SAGE Publications', 'Glynnis Dannett', 929, 'omnis voluptas assumenda est', 'Tamil'),
		('967706803-2', 'The Restaurant at the End of the Universe', 'HarperCollins', 'Sybille Petrazzi', 243, 'Ut labore et dolore magna aliqua', 'Nepali'),
		('466840140-4', 'Through the Looking Glass', 'Elsevier', 'Valerye Patzelt', 714, 'Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae', 'Gujarati'),
		('896827318-9', 'The Picture of Dorian Gray', 'Wolters Kluwer', 'Jocelyne Gogie', 420, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident', 'Polish'),
		('675452482-0', 'The Island of Dr. Moreau', 'Taylor & Francis', 'Trenna Halesworth', 98, 'Sunt in culpa qui officia deserunt mollit anim', 'Indonesian'),
		('277889190-0', 'The Catcher in the Rye', 'Bloomsbury Publishing', 'Dall Quickenden', 971, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident', 'Northern Sotho'),
		('737344592-6', 'The Great Gatsby', 'John Wiley & Sons', 'Ferdy Van de Castele', 609, 'At vero eos et accusamus et iusto odio dignissimos ducimus', 'Tok Pisin'),
		('694331971-X', 'The Fault in Our Stars', 'Simon & Schuster', 'Deni Domelow', 496, 'ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat', 'Punjabi'),
		('377222920-4', 'The Wind in the Willows', 'Springer Nature', 'Tabbie de Voiels', 728, 'Consectetur', 'Malagasy'),
		('585064134-3', 'The Hitchhiker''s Guide to the Galaxy', 'HarperCollins', 'Cathrine Cantu', 932, 'ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat', 'Maltese'),
		('764028185-7', 'The Kite Runner', 'Cambridge University Press', 'Alyse Vaan', 667, 'cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus', 'New Zealand'),
		('042246729-4', 'The Wonderful Wizard of Oz', 'Macmillan Publishers', 'Nap Tailour', 859, 'Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae', 'Marathi'),
		('381129789-9', 'Harry Potter and the Philosopher''s Stone', 'Elsevier', 'Muffin Holtaway', 698, 'Ut enim ad minim veniam', 'Dari'),
		('988663019-1', 'The Adventures of Huckleberry Finn', 'McGraw-Hill Education', 'Myrtice Esilmon', 472, 'cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus', 'Bislama'),
		('188690335-2', 'the Universe and Everything', 'Oxford University Press', 'Nicholas McNeish', 314, 'Lorem ipsum dolor sit amet', 'Japanese'),
		('148184850-X', 'The Picture of Dorian Gray', 'Oxford University Press', 'Colman Sydes', 191, 'Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae', 'Hindi'),
		('811181230-2', 'Life', 'Cengage Learning', 'Carver Surman', 569, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur', 'Croatian'),
		('970287388-6', 'The Alchemist', 'Hachette Book Group', 'Laverna Valentine', 967, 'omnis voluptas assumenda est', 'Albanian'),
		('348736226-0', 'The Girl with the Dragon Tattoo', 'Bloomsbury Publishing', 'Emyle Purvey', 156, 'Ut labore et dolore magna aliqua', 'Spanish'),
		('433050464-2', 'The Fault in Our Stars', 'Wolters Kluwer', 'Ramon Abriani', 964, 'Quis nostrud exercitation ullamco', 'Yiddish'),
		('856989563-1', 'The Catcher in the Rye', 'Elsevier', 'Loree Akast', 264, 'Itaque earum rerum hic tenetur a sapiente delectus', 'Yiddish');

INSERT INTO library_user (username, user_password, user_type, user_name, user_surname, user_email, user_age, user_sex, user_class, school_id, is_operator) 
VALUES  ('jlefwefeing0', 'aovfweg', 'professor', 'Matis', 'Flng', 'jleflem0@usnews.com', 37, 'M', 12, 1, TRUE),
        ('op2textx', 'pswd22', 'professor', 'Martha', 'Stewart', 'mstuw@usnews.com', 54, 'F', 8, 2, TRUE),
        ('op3testx', 'pswd33', 'professor', 'Alexander', 'Great', 'asiaking0@usnews.com', 28, 'M', 3, 3, TRUE);

INSERT INTO library_user (username, user_password, user_type, user_name, user_surname, user_email, user_age, user_sex, user_class, school_id) 
VALUES  ('jlefleming0', 'aovGiL', 'student', 'Jonah', 'Le Fleming', 'jlefleming0@usnews.com', 7, 'M', 12, 2),
        ('dandreasen1', '86S2TQml01tN', 'student', 'Dianne', 'Andreasen', 'dandreasen1@apache.org', 18, 'F', 4, 1),
        ('rranscome2', '9TcwECHn', 'student', 'Rosabel', 'Ranscome', 'rranscome2@mapquest.com', 11, 'F', 6, 2),
        ('ckaradzas3', 'LAgB6Q', 'student', 'Cecilius', 'Karadzas', 'ckaradzas3@squarespace.com', 6, 'M', 11, 3),
        ('htortis4', 'UsNW8xAg4yUu', 'student', 'Hobard', 'Tortis', 'htortis4@nps.gov', 17, 'M', 2, 2),
        ('sspacy5', 'bQbfAsgqrC', 'student', 'Sonny', 'Spacy', 'sspacy5@psu.edu', 7, 'F', 5, 1),
        ('ksulley6', 'JXu4NEWpI', 'student', 'Klarrisa', 'Sulley', 'ksulley6@sphinn.com', 17, 'F', 7, 3),
        ('lobrollachain7', 'XQ2nl3', 'student', 'Lou', 'O''Brollachain', 'lobrollachain7@weebly.com', 9, 'M', 1, 3),
        ('bhaack8', '4dDKDA', 'student', 'Burnaby', 'Haack', 'bhaack8@twitter.com', 13, 'M', 6, 2),
        ('acejka9', 'Vqzdx4P', 'student', 'Annnora', 'Cejka', 'acejka9@phoca.cz', 8, 'F', 2, 1),
        ('bpavkovica', 'XdsfRugPyaj', 'student', 'Banky', 'Pavkovic', 'bpavkovica@wunderground.com', 18, 'M', 4, 3),
        ('msambrokb', 'JhwUeU', 'student', 'Margaux', 'Sambrok', 'msambrokb@bbc.co.uk', 15, 'F', 9, 2),
        ('kferbrachec', 'sEwsIlRlh', 'student', 'Kimble', 'Ferbrache', 'kferbrachec@bing.com', 12, 'M', 11, 2),
        ('dyukhnevd', 'I6mnTt', 'student', 'Delmor', 'Yukhnev', 'dyukhnevd@last.fm', 10, 'M', 7, 3),
        ('apeadene', 'sL7pJbm', 'student', 'Ashely', 'Peaden', 'apeadene@spiegel.de', 12, 'F', 5, 3),
        ('lstangef', 'Nk83UW', 'student', 'Lenna', 'St Ange', 'lstangef@facebook.com', 8, 'F', 2, 2),
        ('akeetchg', '3U4s9Fqmqvd', 'student', 'Anastasie', 'Keetch', 'akeetchg@merriam-webster.com', 6, 'F', 12, 2),
        ('wpanonsh', 'frc4vG', 'student', 'Wileen', 'Panons', 'wpanonsh@census.gov', 11, 'F', 6, 1),
        ('adelatouri', 'GzVGsy', 'student', 'Anna-diana', 'Delatour', 'adelatouri@devhub.com', 14, 'F', 12, 1),
        ('afugglesj', 'gVkPQbm5', 'student', 'Alejandrina', 'Fuggles', 'afugglesj@is.gd', 17, 'F', 1, 3),
        ('cmackeigk', 'tpw9ZQBdja', 'student', 'Cordelia', 'MacKeig', 'cmackeigk@pbs.org', 6, 'F', 8, 2),
        ('egadaultl', '9vH4qMjNAX7', 'student', 'Emily', 'Gadault', 'egadaultl@godaddy.com', 8, 'F', 7, 1),
        ('gkerwickm', 'NeRpBP6US', 'student', 'Gerick', 'Kerwick', 'gkerwickm@cnet.com', 7, 'M', 8, 1),
        ('blimern', 'MFIXI8ePQp7', 'student', 'Bella', 'Limer', 'blimern@thetimes.co.uk', 9, 'F', 9, 3),
        ('tvigorso', 'KAUBTDUw', 'student', 'Timothee', 'Vigors', 'tvigorso@ibm.com', 15, 'M', 11, 1),
        ('jhambersp', 'Ek0DWqhF7nj', 'student', 'Jarret', 'Hambers', 'jhambersp@tinypic.com', 13, 'M', 4, 2),
        ('bderoosq', 'KRrNc5', 'student', 'Ban', 'De Roos', 'bderoosq@live.com', 10, 'M', 9, 1),
        ('atiemanr', 'VFuKDRA', 'student', 'Alli', 'Tieman', 'atiemanr@shutterfly.com', 18, 'F', 5, 3),
        ('lwitherss', 'YUDkBTgFsKK', 'student', 'Lisbeth', 'Withers', 'lwitherss@freewebs.com', 10, 'F', 4, 3),
        ('kridgest', 'J7lgIdIsxs', 'student', 'Kelby', 'Ridges', 'kridgest@nbcnews.com', 8, 'M', 11, 3),
        ('rwarryu', 'IMgJRlJ3jK7c', 'student', 'Roz', 'Warry', 'rwarryu@de.vu', 12, 'F', 8, 3),
        ('jantonv', 'DI9JogeWN', 'student', 'Jamima', 'Anton', 'jantonv@simplemachines.org', 13, 'F', 12, 3),
        ('venneww', 'uyYG6Yke8F6', 'student', 'Vicky', 'Ennew', 'venneww@theglobeandmail.com', 10, 'F', 7, 2),
        ('jmccombex', 'JQW3kDmiKthq', 'student', 'Jake', 'McCombe', 'jmccombex@chicagotribune.com', 6, 'M', 4, 1),
        ('knuddey', 'dEbQbNTVRvg', 'student', 'Kristopher', 'Nudde', 'knuddey@reddit.com', 7, 'M', 11, 2),
        ('sbellanyz', '5OxzsyT9Bw', 'student', 'Seka', 'Bellany', 'sbellanyz@indiegogo.com', 9, 'F', 9, 1),
        ('vmiles10', 'zSlZKYizLbl', 'student', 'Verina', 'Miles', 'vmiles10@fastcompany.com', 14, 'F', 3, 2),
        ('mcollet11', 'iMGBkA7nPM', 'student', 'Madella', 'Collet', 'mcollet11@guardian.co.uk', 11, 'F', 2, 2),
        ('tyearnes12', '2Dlahm', 'student', 'Tamqrah', 'Yearnes', 'tyearnes12@facebook.com', 12, 'F', 8, 3),
        ('gwitchard13', 'BhYrUzz59QB4', 'student', 'Goran', 'Witchard', 'gwitchard13@engadget.com', 17, 'M', 2, 3),
        ('edrescher14', 'Y4ZBnt6U52', 'student', 'Even', 'Drescher', 'edrescher14@qq.com', 14, 'M', 11, 3),
        ('bbottjer15', '6DEM6T5w', 'student', 'Beatrisa', 'Bottjer', 'bbottjer15@google.it', 6, 'F', 2, 1),
        ('sjailler16', '2llOSW3nFm', 'student', 'Selena', 'Jailler', 'sjailler16@drupal.org', 15, 'F', 2, 3),
        ('crosso17', 'ABzXJHCKZ', 'student', 'Callida', 'Rosso', 'crosso17@japanpost.jp', 12, 'F', 12, 2),
        ('mmalyan18', 'EmtDDzpgXC', 'student', 'Merle', 'Malyan', 'mmalyan18@hugedomains.com', 9, 'M', 11, 1),
        ('chartus19', 'UoF7bJt', 'student', 'Creight', 'Hartus', 'chartus19@weebly.com', 15, 'M', 11, 1),
        ('lcallear1a', 'BQL7fGXjHBB5', 'student', 'Lainey', 'Callear', 'lcallear1a@cdc.gov', 11, 'F', 4, 2),
        ('rmosen1b', 'gnw28xWLlw', 'student', 'Robin', 'Mosen', 'rmosen1b@cam.ac.uk', 6, 'F', 11, 2),
        ('akubera1c', 'RCwLJh', 'student', 'Aloise', 'Kubera', 'akubera1c@bravesites.com', 6, 'F', 1, 3),
        ('mpinn1d', '3upAdi2A3qK8', 'student', 'Mart', 'Pinn', 'mpinn1d@ox.ac.uk', 7, 'M', 10, 3),

        ('cleahair0', 'jnHz4OxL', 'professor', 'Carrissa', 'Leahair', 'cleahair0@springer.com', 33, 'F', 1, 1),    
        ('ecorking1', 'pufiRM', 'professor', 'Everard', 'Corking', 'ecorking1@163.com', 64, 'M', 1, 2),            
        ('imanoelli2', 'R6qZK06u8BF', 'professor', 'Ichabod', 'Manoelli', 'imanoelli2@smh.com.au', 27, 'M', 8, 3), 
        ('rfitzroy3', 'FeYZ7mz', 'professor', 'Rooney', 'Fitzroy', 'rfitzroy3@unc.edu', 35, 'M', 2, 2),
        ('ipetracci4', 'd15AWrJ3qNo', 'professor', 'Ivett', 'Petracci', 'ipetracci4@bbb.org', 23, 'F', 6, 3),
        ('jbertrand5', 'VJFcETI6p', 'professor', 'Jerry', 'Bertrand', 'jbertrand5@huffingtonpost.com', 45, 'M', 3, 1),
        ('ageratt6', 'Fy5OOS', 'professor', 'Alphard', 'Geratt', 'ageratt6@clickbank.net', 51, 'M', 1, 1),
        ('gstuckes7', '6ZXCfOkNMji', 'professor', 'Grayce', 'Stuckes', 'gstuckes7@themeforest.net', 36, 'F', 1, 3),
        ('dlumley8', 'UOgygZjR2R', 'professor', 'Devlen', 'Lumley', 'dlumley8@godaddy.com', 40, 'M', 3, 3),
        ('valeveque9', 'RpHeZAR', 'professor', 'Valentine', 'Aleveque', 'valeveque9@arstechnica.com', 35, 'F', 9, 2);


INSERT INTO borrows (user_id, book_id, date_of_borrow)
VALUES  (16, 4, '2023-06-25'),
        (48, 6, '2023-02-25'),
        (14, 21, '2023-05-19'),
        (46, 31, '2023-02-26'),
        (39, 32, '2023-03-02'),
        (30, 35, '2023-04-20'),
        (12, 11, '2023-02-14'),
        (6, 84, '2023-01-28'),
        (31, 11, '2023-01-08'),
        (53, 56, '2023-05-16'),
        (52, 4, '2023-04-07'),
        (54, 57, '2023-02-25'),
        (3, 29, '2023-10-21'),
        (57, 33, '2023-12-27'),
        (13, 23, '2023-03-22'),
        (53, 58, '2023-10-16'),
        (5, 29, '2023-11-24'),
        (38, 45, '2023-01-01'),
        (35, 5, '2023-02-11'),
        (5, 60, '2023-02-25'),
        (37, 76, '2023-04-23'),
        (31, 91, '2023-12-01'),
        (18, 79, '2023-01-08'),
        (33, 82, '2023-07-22'),
        (9, 34, '2023-03-24'),
        (15, 14, '2023-02-25'),
        (15, 30, '2023-03-25'),
        (43, 40, '2023-08-20'),
        (24, 52, '2023-03-24'),
        (52, 8, '2023-04-13'),
        (16, 16, '2023-12-22'),
        (25, 9, '2023-03-30'),
        (24, 96, '2023-09-28'),
        (14, 72, '2023-05-12'),
        (44, 55, '2023-07-09'),
        (46, 19, '2023-11-22'),
        (54, 29, '2023-12-24'),
        (49, 8, '2023-12-14'),
        (16, 100, '2023-08-23'),
        (10, 33, '2023-03-12'),
        (28, 56, '2023-03-13'),
        (35, 11, '2023-05-21'),
        (33, 9, '2023-09-18'),
        (16, 28, '2023-05-13'),
        (39, 10, '2023-02-02'),
        (36, 89, '2023-11-01'),
        (20, 81, '2023-10-27'),
        (1, 54, '2023-06-25'),
        (1, 52, '2023-07-20'),
        (43, 48, '2023-11-18'),
        (47, 98, '2023-02-03'),
        (45, 76, '2023-06-19'),
        (23, 85, '2023-09-21'),
        (40, 68, '2023-01-26'),
        (28, 52, '2023-07-10'),
        (26, 98, '2023-12-15'),
        (45, 93, '2023-06-30'),
        (36, 80, '2023-03-30'),
        (57, 43, '2023-07-05'),
        (9, 29, '2023-09-15'),
        (5, 32, '2023-07-19'),
        (31, 39, '2023-09-09'),
        (36, 61, '2023-10-24'),
        (48, 67, '2023-10-23'),
        (12, 45, '2023-05-28'),
        (24, 29, '2023-04-20'),
        (56, 70, '2023-05-06'),
        (48, 93, '2023-07-20'),
        (36, 29, '2023-03-10'),
        (36, 48, '2023-07-03'),
        (27, 36, '2023-10-20'),
        (25, 37, '2023-11-01'),
        (9, 67, '2023-10-25'),
        (46, 73, '2023-02-25'),
        (42, 1, '2023-08-20'),
        (15, 38, '2023-10-24'),
        (42, 5, '2023-04-14'),
        (8, 73, '2023-12-27'),
        (8, 78, '2023-07-17'),
        (1, 62, '2023-05-30'),
        (7, 37, '2023-09-19'),
        (58, 73, '2023-12-13'),
        (51, 76, '2023-03-31'),
        (5, 76, '2023-11-25'),
        (52, 77, '2023-10-12'),
        (23, 71, '2023-06-26'),
        (9, 72, '2023-03-03'),
        (24, 73, '2023-10-16'),
        (5, 4, '2023-06-21'),
        (48, 83, '2023-04-12'),
        (12, 25, '2023-01-31'),
        (53, 19, '2023-02-10'),
        (52, 38, '2023-09-19'),
        (42, 42, '2023-08-19'),
        (23, 9, '2023-08-18'),
        (44, 94, '2023-02-18'),
        (7, 22, '2023-12-21'),
        (6, 16, '2023-10-25'),
        (53, 16, '2023-10-09'),
        (24, 12, '2023-05-22');

INSERT INTO reservations(user_id, book_id, deadline_of_reservation)
VALUES  (10, 40, '2023-06-16'),
        (19, 65, '2023-06-19'),
        (60, 21, '2023-06-17'),
        (13, 58, '2023-06-14'),
        (6, 84, '2023-06-13'),
        (38, 7, '2023-06-14'),
        (36, 49, '2023-06-15'),
        (21, 26, '2023-06-18'),
        (49, 34, '2023-06-15'),
        (9, 6, '2023-06-13'),
        (43, 33, '2023-06-19'),
        (54, 12, '2023-06-13'),
        (51, 53, '2023-06-15'),
        (44, 79, '2023-06-17'),
        (16, 78, '2023-06-18'),
        (40, 45, '2023-06-15'),
        (33, 50, '2023-06-13'),
        (48, 88, '2023-06-15'),
        (21, 23, '2023-06-18'),
        (8, 76, '2023-06-15'),
        (24, 87, '2023-06-18'),
        (7, 21, '2023-06-13'),
        (32, 65, '2023-06-17'),
        (42, 90, '2023-06-14'),
        (53, 38, '2023-06-17'),
        (45, 85, '2023-06-17'),
        (11, 91, '2023-06-13'),
        (1, 6, '2023-06-17'),
        (22, 6, '2023-06-14'),
        (29, 94, '2023-06-17'),
        (28, 2, '2023-06-16'),
        (28, 92, '2023-06-18'),
        (58, 56, '2023-06-19'),
        (47, 47, '2023-06-17'),
        (5, 18, '2023-06-17'),
        (1, 77, '2023-06-15'),
        (5, 64, '2023-06-13'),
        (45, 22, '2023-06-18'),
        (58, 32, '2023-06-18'),
        (50, 54, '2023-06-16'),
        (28, 61, '2023-06-16'),
        (28, 54, '2023-06-18'),
        (36, 3, '2023-06-14'),
        (17, 22, '2023-06-19'),
        (14, 9, '2023-06-13'),
        (45, 64, '2023-06-15'),
        (46, 48, '2023-06-18'),
        (15, 11, '2023-06-19'),
        (60, 26, '2023-06-15'),
        (28, 18, '2023-06-17');

INSERT INTO category (category_name)
VALUES  ('Fiction'),
        ('Non-Fiction'),
        ('Mystery'),
        ('Thriller'),
        ('Romance'),
        ('Science Fiction'),
        ('Fantasy'),
        ('Horror'),
        ('Biography'),
        ('Autobiography'),
        ('Memoir'),
        ('History'),
        ('Travel'),
        ('Cooking'),
        ('Art'),
        ('Poetry'),
        ('Religion'),
        ('Self-Help'),
        ('Business'),
        ('Finance'),
        ('Science'),
        ('Nature'),
        ('Sports'),
        ('Health'),
        ('Fitness'),
        ('Parenting'),
        ('Drama'),
        ('Comedy'),
        ('Adventure'),
        ('Engineering');


INSERT INTO has_category (category_id, book_id)
VALUES  (1,1),
        (3,1),
        (2,2),
        (3,3),
        (4,4),
        (8,4),
        (5,5),
        (6,6),
        (7,6),
        (7,7),
        (8,8),
        (9,9),
        (10,10),
        (11,11),
        (12,12),
        (13,13),
        (14,14),
        (15,15),
        (16,16),
        (17,17),
        (18,18),
        (19,19),
        (20,20),
        (21,21),
        (22,21),
        (22,22),
        (23,23),
        (24,24),
        (25,25),
        (26,26),
        (27,27),
        (28,28),
        (29,29),
        (30,30),
        (4,31),
        (8,31),
        (6,32),
        (7,32),
        (13,33),
        (14,34),
        (4,35),
        (8,35),
        (16,36),
        (17,37),
        (18,38),
        (19,39),
        (10,40),
        (11,41),
        (12,42),
        (13,43),
        (14,44),
        (15,45),
        (16,46),
        (17,47),
        (18,48),
        (19,49),
        (23,50),
        (25,51),
        (24,52),
        (24,53),
        (26,54),
        (26,55),
        (26,56),
        (15,57),
        (16,57),
        (15,58),
        (16,58),
        (30,59),
        (15,60),
        (16,60),
        (30,61),
        (25,62),
        (25,63),
        (26,64),
        (27,65),
        (28,66),
        (28,67),
        (1,68),
        (3,68),
        (25,69),
        (30,70),
        (11,71),
        (12,72),
        (12,73),
        (13,74),
        (13,75),
        (13,76),
        (17,77),
        (17,78),
        (17,79),
        (27,80),
        (27,81),
        (27,82),
        (28,83),
        (1,84),
        (3,84),
        (27,85),
        (26,86),
        (25,87),
        (22,88),
        (1,89),
        (3,89),
        (19,90),
        (18,91),
        (10,92),
        (18,93),
        (17,94),
        (15,95),
        (16,96),
        (14,97),
        (1,98),
        (3,98),
        (12,99),
        (21,100);

INSERT INTO contains (school_id,book_id,number_of_copies) VALUES
(1, 3, 8),
(1, 4, 4),
(1, 5, 10),
(1, 6, 8),
(1, 10, 5),
(1, 16, 8),
(1, 18, 5),
(1, 23, 1),
(1, 32, 9),
(1, 33, 4),
(1, 34, 10),
(1, 36, 9),
(1, 39, 7),
(2, 1, 5),
(2, 3, 7),
(2, 6, 5),
(2, 8, 10),
(2, 12, 6),
(2, 14, 6),
(2, 15, 7),
(2, 19, 6),
(2, 24, 10),
(2, 26, 3),
(2, 31, 1),
(2, 32, 1),
(2, 38, 4),
(3, 4, 5),
(3, 10, 10),
(3, 14, 6),
(3, 18, 6),
(3, 20, 1),
(3, 21, 2),
(3, 22, 10),
(3, 26, 5),
(3, 27, 7),
(3, 28, 2),
(3, 32, 6),
(3, 35, 10),
(3, 36, 3),
(3, 37, 5);

INSERT INTO reviews (user_id, book_id, review, review_score, approve_status) VALUES
(6, 10, 'It had 6 words', 5, 'Pending'),
(6, 11, 'It had 6 words', 3, 'Pending'),
(6, 12, 'It had 6 words', 2, 'Pending'),
(6, 13, 'It had 6 words', 4, 'Pending'),
(6, 14, 'It had 6 words', 1, 'Pending'),
(6, 15, 'It had 6 words', 1, 'Pending'),
(6, 16, 'It had 6 words', 2, 'Pending'),
(6, 17, 'It had 6 words', 4, 'Pending'),
(6, 18, 'It had 6 words', 4, 'Pending'),
(6, 19, 'It had 6 words', 3, 'Pending'),

(7, 10, 'It had 7 words', 5, 'Pending'),
(7, 11, 'It had 7 words', 3, 'Pending'),
(7, 12, 'It had 7 words', 2, 'Pending'),
(7, 13, 'It had 7 words', 4, 'Pending'),
(7, 14, 'It had 7 words', 1, 'Pending'),
(7, 15, 'It had 7 words', 1, 'Pending'),
(7, 16, 'It had 7 words', 2, 'Pending'),
(7, 17, 'It had 7 words', 4, 'Pending'),
(7, 18, 'It had 7 words', 4, 'Pending'),
(7, 19, 'It had 7 words', 3, 'Pending'),

(8, 10, 'It had many words', 5, 'Pending'),
(8, 11, 'It had many words', 3, 'Pending'),
(8, 12, 'It had many words', 2, 'Pending'),
(8, 13, 'It had many words', 4, 'Pending'),
(8, 14, 'It had many words', 1, 'Pending'),
(8, 15, 'It had many words', 1, 'Pending'),
(8, 16, 'It had many words', 2, 'Pending'),
(8, 17, 'It had many words', 4, 'Pending'),
(8, 18, 'It had many words', 4, 'Pending'),
(8, 19, 'It had many words', 3, 'Pending'),

(9, 10, 'It was alright', 5, 'Approved'),
(9, 11, 'It was alright', 3, 'Approved'),
(9, 12, 'It was alright', 2, 'Approved'),
(9, 13, 'It was alright', 4, 'Approved'),
(9, 14, 'It was alright', 1, 'Approved'),
(9, 15, 'It was alright', 1, 'Approved'),
(9, 16, 'It was alright', 2, 'Approved'),
(9, 17, 'It was alright', 4, 'Approved'),
(9, 18, 'It was alright', 4, 'Approved'),
(9, 19, 'It was alright', 3, 'Approved');