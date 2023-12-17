import time
import json
import kafka

kafka_URI = 'localhost:9092'
topic = 'topic-test'

json_event = {
    "timestamp": int(time.time()),
    "event_type": "user_interaction",
    "user": {
        "user_id": 123,
        "username": "jon_stone",
        "email": "jon.stone@example.com"
    },
    "action": "click",
    "details": {
        "button_id": "submit_button",
        "page_id": "home_page"
    }
}

kafka_producer = kafka.KafkaProducer(
    bootstrap_servers=kafka_URI, 
    api_version='0.9', 
    value_serializer=lambda v: json.dumps(v).encode('utf-8'))

try:
    while True:
        json_event['timestamp'] = int(time.time())
        future = kafka_producer.send(topic, json_event)
        print("The event has been sent")
        time.sleep(3) # 3 sec

except KeyboardInterrupt:
    kafka_producer.close()
 