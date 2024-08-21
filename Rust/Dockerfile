# Use the official Rust image to build the application
FROM rust:latest as builder

# Set the working directory in the container
WORKDIR /app

# Copy the Cargo.toml and Cargo.lock (if present) and the source code
COPY Cargo.toml Cargo.lock ./
COPY src ./src

# Install dependencies and build the application
RUN cargo build --release

# Use a minimal base image for the runtime environment
FROM debian:bullseye-slim

# Install necessary runtime dependencies (adjust as needed)
RUN apt-get update && \
    apt-get install -y \
    libssl-dev \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the built binary from the build stage
COPY --from=builder /app/target/release/myapp /app/

# Expose port 8080 (adjust as needed)
EXPOSE 8080

# Define the default command to run the binary
CMD ["./myapp"]
