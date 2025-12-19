FROM docker.elastic.co/elasticsearch/elasticsearch:8.11.3

# Single-node mode
ENV discovery.type=single-node

# IMPORTANT: allow external access (Back4App health check)
ENV network.host=0.0.0.0

# Disable security (simple setup)
ENV xpack.security.enabled=false
ENV xpack.security.enrollment.enabled=false

# Reduce memory usage
ENV ES_JAVA_OPTS="-Xms512m -Xmx512m"

# Avoid bootstrap issues
ENV bootstrap.memory_lock=false

# HTTP port
EXPOSE 9200
