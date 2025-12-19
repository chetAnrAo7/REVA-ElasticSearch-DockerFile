FROM docker.elastic.co/elasticsearch/elasticsearch:7.17.18

ENV discovery.type=single-node
ENV network.host=0.0.0.0

# Disable security (7.x compatible)
ENV xpack.security.enabled=false

# Very low memory (Back4App safe)
ENV ES_JAVA_OPTS="-Xms256m -Xmx256m"

# Avoid mmap crash
ENV bootstrap.memory_lock=false
ENV node.store.allow_mmap=false

EXPOSE 9200
