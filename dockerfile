FROM mirror.gcr.io/library/nginx:alpine

# Remove default nginx config
RUN rm /etc/nginx/conf.d/default.conf

# Add our config that listens on 8080
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy HTML
COPY homepage.html /usr/share/nginx/html/index.html

# Cloud Run requirement
ENV PORT 8080
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]

