# Setting Up Kafka and Zookeeper with Docker

## Start Docker Compose

To launch Kafka and Zookeeper, run the following command in the terminal:

```
docker-compose up
```

## Access the Kafka Container

*Launch in the terminal for the producer and for the consumer*

To execute Kafka commands from the terminal within the container, use the following command, where **kafka-broker-1** is the Docker container ID:

```
docker exec -it kafka-broker-1 bash
```

## Create a Topic

Run the following command to create a new topic named **topic-name** with 3 partitions and a replication factor of 1:

```
kafka-topics.sh --create --topic <topic-name> --bootstrap-server kafka-broker-1:9092 --partitions 3 --replication-factor 1
```

List available topics with:

```
kafka-topics.sh --list --bootstrap-server kafka-broker-1:9092
```

## Delete a Topic

To delete a topic:

```
kafka-topics.sh --delete --topic <topic-name> --bootstrap-server kafka-broker-1:9092
```

## Create a Producer

To start a producer on the **topic-name** topic, use the following command:

```
kafka-console-producer.sh --topic <topic-name> --bootstrap-server kafka-broker-1:9092
```

## Create a Consumer

Initiate a consumer on the **topic-name** topic with the following command:

```
kafka-console-consumer.sh --topic <topic-name> --bootstrap-server kafka-broker-1:9092 --from-beginning
``` 