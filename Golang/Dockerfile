# Use the official Golang image
FROM golang:1.21

# Set the working directory in the container
WORKDIR /app

# Copy the Go Modules manifests
COPY go.mod go.sum ./
RUN go mod download

# Copy the source code
COPY . .

# Build the application (adjust the binary name as needed)
RUN go build -o app .

# Expose a port (adjust as needed)
EXPOSE 8080

# Set the default command (adjust if necessary)
CMD ["./app"]
