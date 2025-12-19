# Use official lightweight Elasticsearch image
FROM docker.elastic.co/elasticsearch/elasticsearch:8.11.3

# Run as single node (VERY IMPORTANT)
ENV discovery.type=single-node

# Disable security (simplifies usage)
ENV xpack.security.enabled=false
ENV xpack.security.enrollment.enabled=false

# Reduce memory usage (Back4App friendly)
ENV ES_JAVA_OPTS="-Xms512m -Xmx512m"

# Prevent bootstrap checks from failing
ENV bootstrap.memory_lock=false

# HTTP port only (Back4App exposes only one)
EXPOSE 9200
