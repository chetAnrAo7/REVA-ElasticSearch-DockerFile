FROM getmeili/meilisearch:v1.6

# Bind Meilisearch to all interfaces
ENV MEILI_HTTP_ADDR=0.0.0.0:7700

# Disable master key (ONLY for private use)
ENV MEILI_NO_ANALYTICS=true
ENV MEILI_ENV=production

# Reduce memory usage
ENV MEILI_MAX_INDEXING_MEMORY=256Mb
ENV MEILI_MAX_INDEXING_THREADS=1

# Expose Meilisearch port
EXPOSE 7700

# Run Meilisearch
CMD ["meilisearch"]
