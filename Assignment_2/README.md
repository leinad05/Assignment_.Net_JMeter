# Assignment 2

#### Membuat Database dengan import atau menjalankan file bank.sql. 
#### bank.sql berisi: 
* create database bank
* create tabel-tabel
* insert data tiap tabel

#### Menampilkan data dari database bank:

1. Menampilkan semua data customers
```sql
SELECT * FROM customers
```

![semua_data_cust](https://github.com/leinad05/Assignment_.Net_JMeter/blob/main/Assignment_2/Image/customers.png?raw=true)

2.	Menampilkan semua data employees
```sql
SELECT * FROM employees
```

![semua_data_cust](https://github.com/leinad05/Assignment_.Net_JMeter/blob/main/Assignment_2/Image/employees.png?raw=true)

3. Menampilkan semua data offices
```sql
SELECT * FROM offices
```

![semua_data_cust](https://github.com/leinad05/Assignment_.Net_JMeter/blob/main/Assignment_2/Image/offices.png?raw=true)

4.	Menampilkan semua data orderdetails
```sql
SELECT * FROM orderdetails
```

![semua_data_cust](https://github.com/leinad05/Assignment_.Net_JMeter/blob/main/Assignment_2/Image/orderdetails.png?raw=true)

5.	Menampilkan semua data orders
```sql
SELECT * FROM orders
```

![semua_data_cust](https://github.com/leinad05/Assignment_.Net_JMeter/blob/main/Assignment_2/Image/orders.png?raw=true)

6.	Menampilkan semua data payments
```sql
SELECT * FROM payments
```

![semua_data_cust](https://github.com/leinad05/Assignment_.Net_JMeter/blob/main/Assignment_2/Image/payments.png?raw=true)

7.	Menampilkan semua data productlines
```sql
SELECT * FROM productlines
```

![semua_data_cust](https://github.com/leinad05/Assignment_.Net_JMeter/blob/main/Assignment_2/Image/productlines.png?raw=true)

8.	Menampilkan semua data products
```sql
SELECT * FROM products
```

![semua_data_cust](https://github.com/leinad05/Assignment_.Net_JMeter/blob/main/Assignment_2/Image/products.png?raw=true)

9.	Menampilkan data dari tabel product dan productlines (menunjukkan relasi)
```sql
SELECT p.productName, p.quantityInStock, pl.productLine, pl.textDescription
FROM products p 
LEFT JOIN productlines pl
ON p.productLine = pl.productLine
```

![semua_data_cust](https://github.com/leinad05/Assignment_.Net_JMeter/blob/main/Assignment_2/Image/no9.png?raw=true)

10.	Menampilkan data dari tabel customer, employees, dan office (menunjukkan relasi)
```sql
SELECT c.customerName, c.phone, e.firstName, e.officeCode, o.addressLine1, o.country
FROM customers c
INNER JOIN employees e
ON c.salesRepEmployeeNumber = e.employeeNumber
INNER JOIN offices o
ON e.officeCode = o.officeCode
```

![semua_data_cust](https://github.com/leinad05/Assignment_.Net_JMeter/blob/main/Assignment_2/Image/no10.png?raw=true)