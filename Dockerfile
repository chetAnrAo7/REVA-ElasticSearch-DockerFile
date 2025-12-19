FROM getmeili/meilisearch:v1.6

# Bind to all interfaces
ENV MEILI_HTTP_ADDR=0.0.0.0:7700

# Production & analytics off
ENV MEILI_ENV=production
ENV MEILI_NO_ANALYTICS=true

# Reduce startup + memory pressure
ENV MEILI_MAX_INDEXING_MEMORY=128Mb
ENV MEILI_MAX_INDEXING_THREADS=1

# Disable snapshot & dumps (faster boot)
ENV MEILI_DUMP_DIR=/tmp/dumps
ENV MEILI_SNAPSHOT_DIR=/tmp/snapshots

EXPOSE 7700

# Healthcheck so Back4App waits properly
HEALTHCHECK --interval=5s --timeout=3s --start-period=20s --retries=5 \
  CMD wget -qO- http://127.0.0.1:7700/health || exit 1

CMD ["meilisearch", "--log-level", "INFO"]
