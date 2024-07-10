FROM ubuntu:latest

# Install Squid
RUN apt-get update && apt-get install -y squid

# Copy the Squid configuration file
COPY squid.conf /etc/squid/squid.conf

# Expose the Squid port
EXPOSE 3128

# Start Squid
CMD ["squid", "-N"]