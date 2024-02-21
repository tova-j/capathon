insert into piece (piece_id, outfit_id, name, price, image_url, gender, clothing_type)
values (1001, 5001, 'Jeans', 20.99, 'www.google.com', 0, 1);
insert into piece (piece_id, outfit_id, name, price, image_url, gender, clothing_type)
values (1002, 5001, 'White Shirt', 15.99, 'www.google.com', 2, 0);
insert into piece (piece_id, outfit_id, name, price, image_url, gender, clothing_type)
values (1003, 5002, 'Dress', 42.99, 'www.google.com', 1, 2);

insert into outfit (outfit_id, fashion_line_id, num_pieces, price, image_url)
values (5001, 8001, 2, 199.99, 'www.google.com');
insert into outfit (outfit_id, fashion_line_id, num_pieces, price, image_url)
values (5002, 8001, 1, 149.99, 'www.google.com');


insert into custom_user (id, username, password, role)
values (1, 'user1', '1234', 'ROLE_DESIGNER');

insert into custom_user (id, username, password, role)
values (2, 'user2', '123456', 'ROLE_VENDOR');
