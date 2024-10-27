# Use BusyBox as the base image
FROM busybox:latest

# Install ping (iputils-ping package)
RUN opkg update && opkg install iputils-ping

# Set default command to run ping
CMD ["ping", "127.0.0.1"]
