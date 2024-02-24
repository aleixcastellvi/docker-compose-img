# Setting Up Kafka and Zookeeper with Docker

## Start Docker Compose

To launch Kafka and Zookeeper, run the following command in the terminal:

```bash
docker-compose up
```

## Access the Kafka Container

*Launch in the terminal for the producer and for the consumer*

To execute Kafka commands from the terminal within the container, use the following command, where **kafka-broker-1** is the Docker container name:

```bash
docker exec -it kafka-broker-1 bash
```
**Impotant!** *Make sure that the container with the name **kafka-broker-1** exists and is running.*

You can list the names of the running containers with the following command:

```bash
docker ps
```

You can also use the following command to view all containers (including stopped ones):

```bash
docker ps -a
```

## Create a Topic

Run the following command to create a new topic named **topic-name** with 3 partitions and a replication factor of 1:

```bash
kafka-topics.sh --create --topic <topic-name> --bootstrap-server kafka-broker-1:9092 --partitions 3 --replication-factor 1
```

List available topics with:

```bash
kafka-topics.sh --list --bootstrap-server kafka-broker-1:9092
```

## Delete a Topic

To delete a topic:

```bash
kafka-topics.sh --delete --topic <topic-name> --bootstrap-server kafka-broker-1:9092
```

## Create a Producer

To start a producer on the **topic-name** topic, use the following command:

```bash
kafka-console-producer.sh --topic <topic-name> --bootstrap-server kafka-broker-1:9092
```

## Create a Consumer

Initiate a consumer on the **topic-name** topic with the following command:

```bash
kafka-console-consumer.sh --topic <topic-name> --bootstrap-server kafka-broker-1:9092 --from-beginning
``` 