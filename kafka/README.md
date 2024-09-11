# Setting Up Kafka and Zookeeper with Docker

## Introduction

This guide will walk you through setting up Apache Kafka and Zookeeper using Docker. Kafka is a distributed streaming platform, and Zookeeper helps manage and coordinate Kafka brokers.

With the provided Docker Compose setup, you can easily start Kafka and Zookeeper containers, enabling Kafka for producing and consuming messages.

## Prerequisites

Make sure the following tools are installed on your system:

- Docker 
- Docker Compose

## Docker Compose Configuration

The [docker-compose.yml](/kafka/docker-compose.yml) file defines the setup for Kafka and Zookeeper. It includes the Zookeeper container and a single Kafka broker. Here's a breakdown of the services:

- Zookeeper: Necessary for Kafka to function, manages Kafka brokers.
- Kafka Broker: Handles message production, storage, and consumption.

## Steps to Start Kafka and Zookeeper

**Step 1**. Navigate to the kafka directory

First, open a terminal and navigate to the directory where your docker-compose.yml file is located:

```bash
cd /path/to/kafka
```

**Step 2**. Start the Docker Containers
Run the following command to start both the Kafka and Zookeeper containers:

```bash
docker-compose up -d
```

This command will start the containers in detached mode, allowing them to run in the background.

**Step 3**. Verify Running Containers

To verify that the containers are running, use:

```Bash
docker ps
```

Stopping the Kafka and Zookeeper Containers with this command:

```Bash
docker-compose down
```