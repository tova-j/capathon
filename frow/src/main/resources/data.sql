insert into piece (piece_id, outfit_id, name, price, image_url, gender, clothing_type, size)
values (1001, 5001, 'Jeans', 20.99, 'www.google.com', 0, 1, 'Medium');
insert into piece (piece_id, outfit_id, name, price, image_url, gender, clothing_type, size)
values (1002, 5001, 'Polo Shirt', 15.99, 'www.google.com', 2, 0, 'Small');
insert into piece (piece_id, outfit_id, name, price, image_url, gender, clothing_type, size)
values (1003, 5002, 'Dress', 42.99, 'www.google.com', 1, 2, 'Large');
insert into piece (piece_id, outfit_id, name, price, image_url, gender, clothing_type)
values (1004, 5004, 'Pants', 200.99, 'www.google.com', 0, 1);
insert into piece (piece_id, outfit_id, name, price, image_url, gender, clothing_type)
values (1005, 5004, 'White Shirt', 150.99, 'www.google.com', 2, 0);
insert into piece (piece_id, outfit_id, name, price, image_url, gender, clothing_type)
values (1006, 5004, 'Shoes', 42.99, 'www.google.com', 1, 2);

insert into outfit (outfit_id, fashion_line_id, num_pieces, price, image_url)
values (5001, 8001, 2, 199.99, 'www.google.com');
insert into outfit (outfit_id, fashion_line_id, num_pieces, price, image_url)
values (5002, 8001, 1, 149.99, 'www.google.com');
insert into outfit (outfit_id, fashion_line_id, num_pieces, price, image_url)
values (5003, 8001, 3, 199.99, 'www.google.com');
insert into outfit (outfit_id, fashion_line_id, num_pieces, price, image_url)
values (5004, 8006, 4, 149.99, 'www.google.com');
insert into outfit (outfit_id, fashion_line_id, num_pieces, price, image_url)
values (5005, 8006, 2, 199.99, 'www.google.com');
insert into outfit (outfit_id, fashion_line_id, num_pieces, price, image_url)
values (5006, 8006, 1, 149.99, 'www.google.com');
insert into outfit (outfit_id, fashion_line_id, num_pieces, price, image_url)
values (5007, 8006, 3, 199.99, 'www.google.com');
insert into outfit (outfit_id, fashion_line_id, num_pieces, price, image_url)
values (5008, 8006, 4, 149.99, 'www.google.com');

insert into fashion_line (fashion_line_id, designer_id, designer_name, num_outfits, price, season)
values (8001, 1, 'Winter Collection', 2, 1099.99, 0);
insert into fashion_line (fashion_line_id, designer_id, designer_name, num_outfits, price, season)
values (8002, 1, 'Summer Collection', 0, 899.99, 3);
insert into fashion_line (fashion_line_id, designer_id, designer_name, num_outfits, price, season)
values (8003, 2, 'Christian Dior', 0, 1449.99, 2);
insert into fashion_line (fashion_line_id, designer_id, designer_name, num_outfits, price, season)
values (8004, 1, 'Fall Collection', 2, 1099.99, 0);
insert into fashion_line (fashion_line_id, designer_id, designer_name, num_outfits, price, season)
values (8005, 1, 'Spring Collection', 0, 899.99, 3);
insert into fashion_line (fashion_line_id, designer_id, designer_name, num_outfits, price, season)
values (8006, 4, 'Collection Alpha', 2, 1099.99, 0);
insert into fashion_line (fashion_line_id, designer_id, designer_name, num_outfits, price, season)
values (8007, 4, 'Collection Bravo', 0, 899.99, 3);
insert into fashion_line (fashion_line_id, designer_id, designer_name, num_outfits, price, season)
values (8008, 4, 'Collection Charlie', 2, 1099.99, 0);
insert into fashion_line (fashion_line_id, designer_id, designer_name, num_outfits, price, season)
values (8009, 4, 'Collection Delta', 0, 899.99, 3);

insert into custom_user (id, username, password, first_name, last_name, role)
values (1, 'user1', '1234', 'Coco', 'Chanel', 'ROLE_DESIGNER');
insert into custom_user (id, username, password, first_name, last_name, role)
values (2, 'user4', '1234', 'Giorgio', 'Armani', 'ROLE_DESIGNER');
insert into custom_user (id, username, password, first_name, last_name, role)
values (3, 'user3', '1234', 'Ralph', 'Lauren', 'ROLE_DESIGNER');
insert into custom_user (id, username, password, first_name, last_name, role)
values (4, 'user1', '1234', 'Valentino', 'Garavani', 'ROLE_DESIGNER');
insert into custom_user (id, username, password, first_name, last_name, role)
values (5, 'user4', '1234', 'Marc', 'Jacobs', 'ROLE_DESIGNER');
insert into custom_user (id, username, password, first_name, last_name, role)
values (6, 'user6', '1234', 'Michael', 'Kors', 'ROLE_DESIGNER');
insert into custom_user (id, username, password, first_name, last_name, role)
values (9, 'user7', '1234', 'Yves', 'Saint Laurent', 'ROLE_DESIGNER');
insert into custom_user (id, username, password, first_name, last_name, role)
values (10, 'user8', '1234', 'Christian', 'Dior', 'ROLE_DESIGNER');
insert into custom_user (id, username, password, first_name, last_name, role)
values (11, 'user9', '1234', 'Donatella', 'Versace', 'ROLE_DESIGNER');
insert into custom_user (id, username, password, first_name, last_name, role)
values (12, 'user10', '1234', 'Stella', 'McCartney', 'ROLE_DESIGNER');
insert into custom_user (id, username, password, first_name, last_name, role)
values (13, 'user11', '1234', 'Rihanna', 'Fenty', 'ROLE_DESIGNER');
insert into custom_user (id, username, password, first_name, last_name, role)
values (14, 'user12', '1234', 'Vera', 'Wang', 'ROLE_DESIGNER');
insert into custom_user (id, username, password, first_name, last_name, role)
values (15, 'user13', '1234', 'Mary', 'Quant', 'ROLE_DESIGNER');
insert into custom_user (id, username, password, first_name, last_name, role)
values (16, 'user14', '1234', 'Elsa', 'Schiaparelli', 'ROLE_DESIGNER');
insert into custom_user (id, username, password, first_name, last_name, role)
values (17, 'user15', '1234', 'Kate', 'Spade', 'ROLE_DESIGNER');

insert into custom_user (id, username, password, first_name, last_name, role)
values (7, 'designer', '1234', 'Miuccia', 'Prada', 'ROLE_DESIGNER');
insert into custom_user (id, username, password, first_name, last_name, role)
values (8, 'vendor', '1234', 'Banana', 'Republic', 'ROLE_VENDOR');

insert into order_record (order_id, user_id, num_items, total_price, purchase_date)
values (1000, 1, 2, 98.67, '02-19-2024');
insert into order_record (order_id, user_id, num_items, total_price, purchase_date)
values (1001, 8, 2, 108.67, '02-19-2024');
insert into order_record (order_id, user_id, num_items, total_price, purchase_date)
values (1002, 3, 3, 108.67, '02-20-2024');
insert into order_record (order_id, user_id, num_items, total_price, purchase_date)
values (1003, 8, 1, 138.67, '02-20-2024');
insert into order_record (order_id, user_id, num_items, total_price, purchase_date)
values (1004, 5, 1, 138.67, '02-21-2024');
insert into order_record (order_id, user_id, num_items, total_price, purchase_date)
values (1005, 8, 2, 148.67, '02-21-2024');
insert into order_record (order_id, user_id, num_items, total_price, purchase_date)
values (1006, 3, 1, 148.67, '02-21-2024');
insert into order_record (order_id, user_id, num_items, total_price, purchase_date)
values (1007, 8, 1, 188.67, '02-22-2024');
insert into order_record (order_id, user_id, num_items, total_price, purchase_date)
values (1008, 1, 2, 188.67, '02-22-2024');
insert into order_record (order_id, user_id, num_items, total_price, purchase_date)
values (1009, 8, 1, 208.67, '02-22-2024');
insert into order_record (order_id, user_id, num_items, total_price, purchase_date)
values (1010, 5, 1, 208.67, '02-23-2024');
insert into order_record (order_id, user_id, num_items, total_price, purchase_date)
values (1011, 8, 1, 20.99, '02-23-2024');