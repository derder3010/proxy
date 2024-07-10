FROM ubuntu:latest

# Install Squid
RUN apt-get update && apt-get install -y squid

# Copy the Squid configuration file
COPY squid.conf /etc/squid/squid.conf

# Expose the Squid port
EXPOSE 3128

# Health check to ensure Squid is running
HEALTHCHECK --interval=30s --timeout=10s CMD curl -f http://localhost:3128 || exit 1

# Start Squid
CMD ["squid", "-N"]
