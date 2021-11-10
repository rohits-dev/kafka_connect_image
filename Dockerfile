FROM confluentinc/cp-server-connect-operator:6.1.3.0
USER root
RUN  confluent-hub install --no-prompt confluentinc/kafka-connect-datagen:0.5.0 \
    && confluent-hub install --no-prompt mongodb/kafka-connect-mongodb:1.5.1 \
    && confluent-hub install --no-prompt confluentinc/kafka-connect-elasticsearch:latest \
    && confluent-hub install --no-prompt debezium/debezium-connector-mysql:1.6.0
USER 1001