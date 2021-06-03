CREATE DATABASE bank;
CREATE TABLE bank.customers (
    customer_id INT8 PRIMARY KEY, name STRING, address STRING
);

INSERT
  INTO bank.customers
VALUES (1, 'Petee', '101 5th Ave, New York, NY 10003'),
       (2, 'Carl', NULL),
       (3, 'Lola', NULL),
       (
        4,
        'Ernie',
        '1600 Pennsylvania Ave NW, Washington, DC 20500'
       );

CREATE TABLE bank.accounts (
    type        STRING,
    balance     DECIMAL(8,2),
    customer_id INT8 REFERENCES bank.customers (customer_id)
);

INSERT
  INTO bank.accounts
VALUES ('checking', 0.00, 1),
       ('checking', 250.00, 2),
       ('savings', 314.15, 2),
       ('savings', 42000.00, 4);