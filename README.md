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

---

# Docker

To run the Django app in a Docker container, you can use the following command:

```bash
docker run -d --name django-app -p 4100:8000 ${DOCKER_USERNAME}/django-app
```

This command will run the Django app in a Docker container and expose port 8000 from the container to port 4100 on the host machine.

To stop the container, you can use the following command:

```bash
docker stop django-app
```

To remove the container, you can use the following command:

```bash
docker rm django-app
```

To build the Docker image, you can use the following command:

```bash
docker build -t ${DOCKER_USERNAME}/django-app .