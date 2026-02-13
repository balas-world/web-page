# Use official nginx image
FROM nginx:alpine

# Install git
RUN apk add --no-cache git

# Set working directory
WORKDIR /tmp

# Clone your repository
# Replace with your actual repository URL
RUN git clone https://github.com/balas-world/web-page.git

# Remove default nginx html
RUN rm -rf /usr/share/nginx/html/*

# Move website files to nginx web root
RUN cp -rf web-page/* /usr/share/nginx/html/

# Expose port 80
EXPOSE 1234

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
