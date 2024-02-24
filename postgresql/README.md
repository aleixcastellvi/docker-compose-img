# Setting Up PostgreSQL and pgAdmin with Docker

## Getting Started

```bash
git clone https://github.com/aleixcastellvi/docker-compose-img.git
```

```bash
cd postgresql
```

## Start Docker Compose

To launch postgresSQL and pgAdmin interfice, run the following command in the terminal:

```bash
docker-compose up
```

This command will download the necessary Docker images, create and start the containers defined in the docker-compose.yaml file.

## Accessing pgAdmin Interface

Open the browser and go to http://localhost:80. Log in with the following credentials:

* **Email:** admin@admin.com
* **Password:** admin

## Getting Started with pgAdmin

To create a server connected to the PostgreSQL database instance running in the Docker container, follow these steps:

1. Navigate to: `Object/Register/Server...`
2. Enter the desired name.
3. Go to the __Connection__ tab and use the following parameters from the initialized database configuration in the container:
    * **Host name:** postgres
    * **Port:** 5432
    * **Username:** root
    * **Password:** root

## Stopping the Containers

```bash
docker-compose down
```