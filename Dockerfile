FROM nginx:alpine

# Remove default configurations
RUN rm -rf /etc/nginx/conf.d/* /etc/nginx/nginx.conf

# Copy our custom configuration
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]
