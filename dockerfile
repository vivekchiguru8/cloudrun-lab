FROM mirror.gcr.io/library/nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf
COPY homepage.html /usr/share/nginx/html/index.html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
EOF
