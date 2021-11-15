FROM confluentinc/cp-server-connect:7.0.0

USER root
RUN  confluent-hub install --no-prompt confluentinc/kafka-connect-datagen:0.5.2 \
    && confluent-hub install --no-prompt mongodb/kafka-connect-mongodb:1.6.1 \
    && confluent-hub install --no-prompt confluentinc/kafka-connect-elasticsearch:11.1.4 \
    && confluent-hub install --no-prompt debezium/debezium-connector-mysql:1.7.0
USER 1001