# Use official MeiliSearch image
FROM getmeili/meilisearch:v1.6

# Expose MeiliSearch port
EXPOSE 7700

# Production mode
ENV MEILI_ENV=production
ENV MEILI_HTTP_ADDR=0.0.0.0:7700

# Enable Mini Dashboard
ENV MEILI_ENABLE_DASHBOARD=true

# Master key (full access - OK for mini project)
ENV MEILI_MASTER_KEY=RevaSearchEngineBack4App

# Start MeiliSearch
CMD ["meilisearch"]
