insert into piece (piece_id, outfit_id, name, price, image_url, gender, clothing_type, size)
values (1001, 5001, 'Jeans', 20.99, 'www.google.com', 0, 1, 'Medium');
insert into piece (piece_id, outfit_id, name, price, image_url, gender, clothing_type, size)
values (1002, 5001, 'White Shirt', 15.99, 'www.google.com', 2, 0, 'Small');
insert into piece (piece_id, outfit_id, name, price, image_url, gender, clothing_type, size)
values (1003, 5002, 'Dress', 42.99, 'www.google.com', 1, 2, 'Large');

insert into outfit (outfit_id, fashion_line_id, num_pieces, price, image_url)
values (5001, 8001, 2, 199.99, 'www.google.com');
insert into outfit (outfit_id, fashion_line_id, num_pieces, price, image_url)
values (5002, 8001, 1, 149.99, 'www.google.com');
insert into outfit (outfit_id, fashion_line_id, num_pieces, price, image_url)
values (5003, 8001, 3, 199.99, 'www.google.com');
insert into outfit (outfit_id, fashion_line_id, num_pieces, price, image_url)
values (5004, 8001, 4, 149.99, 'www.google.com');

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

-- insert into order_record (order_id, user_id, num_items)
-- values (20001, 4111, 1);
-- insert into order_record (order_id, user_id, num_items)
-- values (20002, 4111, 2);

insert into custom_user (id, username, password, first_name, last_name, role)
values (1, 'user1', '1234', 'Joonyoung', 'Im', 'ROLE_DESIGNER');
insert into custom_user (id, username, password, first_name, last_name, role)
values (2, 'user4', '1234', 'Tova  ', 'Just', 'ROLE_DESIGNER');
insert into custom_user (id, username, password, first_name, last_name, role)
values (3, 'user3', '1234', 'Aditya', 'Pothanaboyina', 'ROLE_DESIGNER');
insert into custom_user (id, username, password, first_name, last_name, role)
values (4, 'user1', '1234', 'Giorgio', 'Armani', 'ROLE_DESIGNER');
insert into custom_user (id, username, password, first_name, last_name, role)
values (5, 'user4', '1234', 'Calvin', 'Klein', 'ROLE_DESIGNER');
insert into custom_user (id, username, password, first_name, last_name, role)
values (6, 'user6', '1234', 'Michael', 'Kors', 'ROLE_DESIGNER');

insert into custom_user (id, username, password, first_name, last_name, role)
values (7, 'designer', '1234', 'John', 'Doe', 'ROLE_DESIGNER');
insert into custom_user (id, username, password, first_name, last_name, role)
values (8, 'vendor', '1234', 'Emma', 'Smith', 'ROLE_VENDOR');

