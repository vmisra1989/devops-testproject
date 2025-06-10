
# Use a lightweight base image with Bash
FROM alpine:latest

# Install bash (Alpine uses sh by default)
RUN apk add --no-cache bash

# Set working directory
WORKDIR /app

# Copy your script into the container, inside /app directory
COPY test.sh .

# Make it executable
RUN chmod +x test.sh

# Run it
CMD ["./test.sh"]
