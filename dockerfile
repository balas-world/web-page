FROM mcr.microsoft.com/dotnet/samples

# Switch to root to install git
USER root

# Install git
RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Clone your repository
RUN git clone https://github.com/balas-world/web-page.git .

# Expose port 9999
EXPOSE 80

# Run ASP.NET app on port 9999
ENV ASPNETCORE_URLS=http://+:80

CMD ["dotnet", "run"]
