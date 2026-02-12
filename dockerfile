# Use an official Nginx base image
FROM nginx:alpine

# Install git
RUN apk add --no-cache git

# Set working directory
WORKDIR /usr/share/nginx/html

# Clone the repository into the web root
RUN git clone https://github.com/your-username/your-repo.git . 
RUN cp -rf web-page/* /usr/share/nginx/html
# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
