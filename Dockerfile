FROM nginx:alpine

# Copy static files
COPY chromacheck.html /usr/share/nginx/html/index.html
COPY *.md /usr/share/nginx/html/
COPY *.xml /usr/share/nginx/html/
COPY *.txt /usr/share/nginx/html/

# Copy nginx config
COPY nginx-docker.conf /etc/nginx/conf.d/default.conf

# Expose ports
EXPOSE 80 443

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --quiet --tries=1 --spider http://localhost/ || exit 1

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
