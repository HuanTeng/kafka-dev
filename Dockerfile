FROM bitnami/kafka:1.0.0-r5

ADD https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.3.1/jmx_prometheus_javaagent-0.3.1.jar /opt/bitnami/kafka/libs/
RUN chmod 0644 /opt/bitnami/kafka/libs/jmx_prometheus_javaagent-0.3.1.jar
COPY run.sh /run.sh
