# Server

This project uses django as the backend. To run the server, you can use the following command:

```bash
python manage.py runserver
```

It will run on port 8000 by default.

To change the port, you can use the following command:

```bash
python manage.py runserver 8001
```

---

# Database

The file `settings.py` contains the database connection information. By default, django uses sqlite3 as the database engine.

It will ask for migrations when you run the server for the first time. You can run the following command to create the database:

```bash
python manage.py migrate
```

To connect to the database, you can use the following command:

```bash
python manage.py dbshell
```

## Using SQLITE3

To show all the tables in the database, you can use the following command:

```bash
sqlite> .tables
```

To show all the columns in a table, you can use the following command:

```bash
sqlite> .schema tablename
```

To show all the rows in a table, you can use the following command:

```bash
sqlite> select * from tablename;
```
